#include<regex>
#include<iostream>
#include<fstream>
#include<capd/capdlib.h>
#include<capd/intervals/lib.h>
#include<string>
#include<iomanip>
#include<fstream>
#include<math.h>
//#include<gsl/gsl_cdf.h>
//#include<gsl/gsl_rng.h>
#include "Entry.h"
#include "Integral.h"
#include "Distribution.h"
#include "RV.h"
#include "CartesianProduct.h"

using namespace std;
using namespace capd;
//using namespace boost;

//vector<RV> rv;
const regex normalRegEx("(\\s)*(N)(\\s)*(\\()([-+]?[0-9]*.?[0-9]+)(\\s)*(,)(\\s)*([-+]?[0-9]*.?[0-9]+)(\\s)*(\\))(\\s)*([a-zA-Z][a-zA-Z0-9_]*)(;)(\\s)*");
const regex uniformRegEx("(\\s)*(U)(\\s)*(\\()([-+]?[0-9]*.?[0-9]+)(\\s)*(,)(\\s)*([-+]?[0-9]*.?[0-9]+)(\\s)*(\\))(\\s)*([a-zA-Z][a-zA-Z0-9_]*)(;)(\\s)*");

/**
 * Takes name of the template, depth and interval of the random variable
 * and returns true if formula is SAT and false otherwise
 */
bool dReach(vector<string> var, vector<double> a, vector<double> b, string fileName, string k, string dRealOptions, double delta, vector<Entry> x)
{
	ofstream drhFile;
	drhFile.open(string(fileName + ".drh").c_str());
	if (drhFile.is_open())
	{
		for(int i = 0; i < var.size(); i++)
		{
			drhFile << "#define " << var.at(i) << "_a " << x.at(i).getSubInterval().leftBound() << endl;
			drhFile << "#define " << var.at(i) << "_b " << x.at(i).getSubInterval().rightBound() << endl;
			drhFile << "[" << a.at(i) << ", " << b.at(i) << "] " << var.at(i) << ";" << endl;
		}
		ifstream drhTemplate;
		drhTemplate.open(string(fileName + ".pdrh2drh").c_str());
		if (drhTemplate.is_open())
		{
			string line;
			while (getline(drhTemplate, line))
			{
				drhFile << line << endl;
			}
			drhTemplate.close();
		}
		drhFile.close();
	}

	ostringstream calldReachStream;
	calldReachStream << "dReach -k " << k << " " << fileName << ".drh -precision=" << delta << endl; //<< " > /dev/null";
	string calldReach(calldReachStream.str());
	int res = system(calldReach.c_str());
	
	string resultFileName(fileName + "_" + k + "_0.output");
	ifstream resultFile;
	resultFile.open(resultFileName.c_str());
	if (resultFile.is_open())
	{
		string line;
		getline(resultFile, line);
		resultFile.close();
		if (line == "sat")
		{
			return true;
		}
		return false;
	}
	else
	{
		cout << "COULD NOT OPEN THE FILE: " << resultFileName << endl;
	}

}

void writeEntriesToFile(vector<Entry> entries, string fileName)
{
	ofstream file;
	file.open(fileName.c_str());
	if (file.is_open())
	{
		for (long int i = 0; i < entries.size(); i++)
		{
			file << i << ") " << entries.at(i).toString() << endl;
		}
		file.close();
	}
}

/**
 * Derives random parameters from pdrh file
 */
vector<RV> getRVs(string pdrhFilename)
{

	vector<RV> result;
	ifstream pdrhFile;
	ofstream drhFile;
	smatch matches;
	pdrhFile.open(pdrhFilename.c_str());
	
	if(pdrhFile.is_open())
	{
		drhFile.open(string(pdrhFilename + ".pdrh2drh").c_str());
		if(drhFile.is_open())
		{
			string line;
			while (getline(pdrhFile, line))
			{
				if (regex_match(line, matches, normalRegEx)) 
				{
					string param1 = string() + matches[5].str();
					double mean = atof(param1.c_str());
					string param2 = string() + matches[9].str();
					double deviation = atof(param2.c_str());
					string var = string() + matches[13].str();
					result.push_back(RV("n", var, normalString(var, mean, deviation), mean - 10 * deviation, mean + 10 * deviation));
				} else
				if (regex_match(line, matches, uniformRegEx)) 
				{
					string param1 = string() + matches[5].str();
					double left = atof(param1.c_str());
					string param2 = string() + matches[9].str();
					double right =atof(param2.c_str());
					string var = string() + matches[13].str();
					result.push_back(RV("u", var, uniformString(left, right), left, right));
				} 
				else 
				{
					drhFile << line << endl;
				}
			}
		}
		drhFile.close();
	}
	pdrhFile.close();
	
	return result;
}

int main(int argc, char *argv[])
{
	
	double precision;
	string modelFile;
	string modelFileCompliment;
	string dReachOptions;
	string dRealOptions;

	string settings = argv[1];
	cout << "Your settings file name: " << settings << endl;	
	
	ifstream settingsFile;
	cout << "Your file is:" << endl;
	settingsFile.open(settings.c_str());
	if (settingsFile.is_open())
	{
		while (!settingsFile.eof())
		{
			string line;
			getline(settingsFile, line);
			if (line == "param:")
			{
				getline(settingsFile, line);
				precision = atof(line.c_str());
				
			}
			if (line == "model:")
			{
				getline(settingsFile, modelFile);
				getline(settingsFile, modelFileCompliment);
			}
						
			if (line == "dReach:")
			{
				dReachOptions = "";
					while (!settingsFile.eof())
					{
						getline(settingsFile, line);
						smatch matches;
						cout << line << endl;
						regex depthRegex("(\\s)*([0-9]+)(\\s)*");
						if (regex_match(line, matches, depthRegex)) 
						{
							cout << "matches" << endl;
							for(int i = 0; i < matches.length(); i++)
							{
								cout << matches[i] << endl;
							}
							dReachOptions += matches[0];
						}
					}
					break;
			}
			
			
		}
		settingsFile.close();		
	}

	cout << "Parameters: " << endl;
	cout << precision << endl;
	
	cout << "Model: " << endl;
	cout << modelFile << endl;
	cout << modelFileCompliment << endl;
		
	cout << "dReach options: " << endl;
	cout << dReachOptions << endl;

	vector<RV> rv = getRVs(modelFile);
	cout << "There are " << rv.size() << " random variables in the model. Only the first one will be used" << endl;
	
	for (int i = 0; i < rv.size(); i++) cout << rv.at(i).toString() << endl;
	
	vector<string> var;
	vector<string> fun;
	vector<double> a;
	vector<double> b;
	
	var.push_back(rv.at(0).getVar());
	fun.push_back(rv.at(0).getFun());
	a.push_back(rv.at(0).getLeft());
	b.push_back(rv.at(0).getRight());
	
	DInterval overIntg(0.0), underIntg(0.0), realIntg(0.0, 1.0);
	list<DInterval> mixedIntervals;
	list<DInterval> dReachIntervals;
	list<string> dReachResult;
	list<string> dReachResultInverse;
	
	vector<Integral> integral;
	vector< vector<Entry> > vectors;
	vector<double> infError;
	
	Integral itg = Integral(var.at(0), fun.at(0), a.at(0), b.at(0), precision);
	DInterval I = itg.solve();
	cout << 0 << ") I([" << a.at(0) << ", " << b.at(0) << "]) = " << setprecision(16) << I << endl;
	vectors.push_back(itg.getEntries());
	integral.push_back(itg);
	infError.push_back(1 - I.leftBound());
		
	vector< vector<Entry> > cartProduct = cartesianProduct(vectors);
	
	vector<Entry> extraEntries;

	int counter = 0;
	
	/*
	for(int i = 0; i < cartProduct.size(); i++)
	{
		cout << counter << ") ";
		for(int j = 0; j < cartProduct.at(i).size(); j++)
		{
			cout << cartProduct.at(i).at(j).getSubInterval() << " x ";
		}
		counter++;
		cout << endl;
	}
	*/
	
	//main loop	
	counter = 0;
	while (width(realIntg) > precision)
	{
		//going through all the vector<vector<Entry>>
		for (long int i = 0; i < cartProduct.size(); i++)
		{
			double delta = width(cartProduct.at(i).at(0).getSubInterval()) / 1000;
			if (dReach(var, a, b, modelFile, dReachOptions, dRealOptions, delta, cartProduct.at(i)))
			{	
				overIntg += cartProduct.at(i).at(0).getPartialSum();
				if (dReach(var, a, b, modelFileCompliment, dReachOptions, dRealOptions, delta, cartProduct.at(i)))
				{

					DInterval left(cartProduct.at(i).at(0).getSubInterval().leftBound(), cartProduct.at(i).at(0).getSubInterval().mid().rightBound());
					DInterval right(cartProduct.at(i).at(0).getSubInterval().mid().leftBound(), cartProduct.at(i).at(0).getSubInterval().rightBound());
					extraEntries.push_back(Entry(left, integral.at(0).calculateS(left)));
					extraEntries.push_back(Entry(right, integral.at(0).calculateS(right)));
				}
				else
				{
					underIntg += cartProduct.at(i).at(0).getPartialSum();
				}
			}
			cout << counter << " of " << cartProduct.size() << endl;
			counter++;
		}

		cartProduct.clear();
		
		for (long int i = 0; i < extraEntries.size(); i++)
		{
			vector<Entry> tmp;
			tmp.push_back(extraEntries.at(i));
			cartProduct.push_back(tmp);
		}		
		
		extraEntries.clear();

		realIntg = DInterval(underIntg.leftBound(), overIntg.rightBound());
		cout << "************" << endl;
		cout << "Division number " << counter << endl;
		cout << "underIntg: " << setprecision(16) << underIntg << endl;
		cout << "overIntg: " << setprecision(16) << overIntg << endl;
		cout << "realIntg: " << setprecision(16) << realIntg << endl;
		DInterval realIntgInf(realIntg.leftBound(), realIntg.rightBound() + infError.at(0));
		cout << "realIntgInf: " << setprecision(16) << realIntgInf << endl;
		cout << "Starting extra division" << endl;

		overIntg = underIntg;
		counter = 0;

	}
	
	cout << "end" << endl;
	return 0;
}



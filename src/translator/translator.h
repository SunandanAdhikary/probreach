//
// Created by kny on 27/02/18.
//

#ifndef PROBREACH_TRANSLATOR_H
#define PROBREACH_TRANSLATOR_H

#include "MatlabEngine.hpp"
#include "MatlabDataArray.hpp"

using namespace std;
using namespace matlab::engine;
using namespace matlab::data;

namespace translator{

    extern const string slStateBase;
    extern const string subSysHandlerBase;

    struct block_connection {
        string block_name;
        int port_id;

        block_connection(string name, int id){
          this->block_name = name;
          this->port_id = id;
        }
    };

    class Translator{
    private:
        unique_ptr<matlab::engine::MATLABEngine> engine;
        matlab::data::ArrayFactory arrayFactory;
        string modelName, systemHandlerName, currentSubSystemHandler;
        // name (re)generation rather than maps (of maps)

    public:
        Translator();

        void translate_model();

        ~Translator();

    private:
        void translate_ode_expression(pdrh::node *expr, block_connection parent_block);
        void generate_init_var_blocks(const pdrh::mode &m);
        void set_system_time_interval(const string& subsys, double start_time, double end_time);
        void addBlock(string subSysHandler, string srcPath, string blkName);
        void addBlock(string subSysHandler, string srcPath, string blkName,
                      translator::block_connection &connect_to);
        void connect_blocks(string subSysHandler, block_connection out_block, block_connection in_block);
        void set_block_param(string subSysHandler, string blkName, string parameter, string value);
    };


    void parse_tree();
    string get_initial_value(string variable_name);
    void translate_ode_expression(pdrh::node *expr);

    void translate_model();
}

#endif //PROBREACH_TRANSLATOR_H

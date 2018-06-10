(set-logic QF_NRA_ODE)
(declare-fun DG () Real)
(declare-fun DG_0_0 () Real)
(declare-fun DG_0_t () Real)
(assert (>= DG_0_0  0))
(assert (>= DG_0_t  0))
(assert (<= DG_0_0  120))
(assert (<= DG_0_t  120))
(declare-fun DG_1_0 () Real)
(declare-fun DG_1_t () Real)
(assert (>= DG_1_0  0))
(assert (>= DG_1_t  0))
(assert (<= DG_1_0  120))
(assert (<= DG_1_t  120))
(declare-fun DG1 () Real)
(declare-fun DG1_0_0 () Real)
(declare-fun DG1_0_t () Real)
(assert (>= DG1_0_0  87))
(assert (>= DG1_0_t  87))
(assert (<= DG1_0_0  120))
(assert (<= DG1_0_t  120))
(declare-fun DG1_1_0 () Real)
(declare-fun DG1_1_t () Real)
(assert (>= DG1_1_0  87))
(assert (>= DG1_1_t  87))
(assert (<= DG1_1_0  120))
(assert (<= DG1_1_t  120))
(declare-fun I () Real)
(declare-fun I_0_0 () Real)
(declare-fun I_0_t () Real)
(assert (>= I_0_0  0))
(assert (>= I_0_t  0))
(assert (<= I_0_0  1e6))
(assert (<= I_0_t  1e6))
(declare-fun I_1_0 () Real)
(declare-fun I_1_t () Real)
(assert (>= I_1_0  0))
(assert (>= I_1_t  0))
(assert (<= I_1_0  1e6))
(assert (<= I_1_t  1e6))
(declare-fun Q1 () Real)
(declare-fun Q1_0_0 () Real)
(declare-fun Q1_0_t () Real)
(assert (>= Q1_0_0  0))
(assert (>= Q1_0_t  0))
(assert (<= Q1_0_0  1e6))
(assert (<= Q1_0_t  1e6))
(declare-fun Q1_1_0 () Real)
(declare-fun Q1_1_t () Real)
(assert (>= Q1_1_0  0))
(assert (>= Q1_1_t  0))
(assert (<= Q1_1_0  1e6))
(assert (<= Q1_1_t  1e6))
(declare-fun Q2 () Real)
(declare-fun Q2_0_0 () Real)
(declare-fun Q2_0_t () Real)
(assert (>= Q2_0_0  0))
(assert (>= Q2_0_t  0))
(assert (<= Q2_0_0  1e6))
(assert (<= Q2_0_t  1e6))
(declare-fun Q2_1_0 () Real)
(declare-fun Q2_1_t () Real)
(assert (>= Q2_1_0  0))
(assert (>= Q2_1_t  0))
(assert (<= Q2_1_0  1e6))
(assert (<= Q2_1_t  1e6))
(declare-fun S1 () Real)
(declare-fun S1_0_0 () Real)
(declare-fun S1_0_t () Real)
(assert (>= S1_0_0  0))
(assert (>= S1_0_t  0))
(assert (<= S1_0_0  1e6))
(assert (<= S1_0_t  1e6))
(declare-fun S1_1_0 () Real)
(declare-fun S1_1_t () Real)
(assert (>= S1_1_0  0))
(assert (>= S1_1_t  0))
(assert (<= S1_1_0  1e6))
(assert (<= S1_1_t  1e6))
(declare-fun S2 () Real)
(declare-fun S2_0_0 () Real)
(declare-fun S2_0_t () Real)
(assert (>= S2_0_0  0))
(assert (>= S2_0_t  0))
(assert (<= S2_0_0  1e6))
(assert (<= S2_0_t  1e6))
(declare-fun S2_1_0 () Real)
(declare-fun S2_1_t () Real)
(assert (>= S2_1_0  0))
(assert (>= S2_1_t  0))
(assert (<= S2_1_0  1e6))
(assert (<= S2_1_t  1e6))
(declare-fun e () Real)
(declare-fun e_0_0 () Real)
(declare-fun e_0_t () Real)
(assert (>= e_0_0 (- 1e6)))
(assert (>= e_0_t (- 1e6)))
(assert (<= e_0_0  1e6))
(assert (<= e_0_t  1e6))
(declare-fun e_1_0 () Real)
(declare-fun e_1_t () Real)
(assert (>= e_1_0 (- 1e6)))
(assert (>= e_1_t (- 1e6)))
(assert (<= e_1_0  1e6))
(assert (<= e_1_t  1e6))
(declare-fun e_int () Real)
(declare-fun e_int_0_0 () Real)
(declare-fun e_int_0_t () Real)
(assert (>= e_int_0_0 (- 1e9)))
(assert (>= e_int_0_t (- 1e9)))
(assert (<= e_int_0_0  1e9))
(assert (<= e_int_0_t  1e9))
(declare-fun e_int_1_0 () Real)
(declare-fun e_int_1_t () Real)
(assert (>= e_int_1_0 (- 1e9)))
(assert (>= e_int_1_t (- 1e9)))
(assert (<= e_int_1_0  1e9))
(assert (<= e_int_1_t  1e9))
(declare-fun e_ise () Real)
(declare-fun e_ise_0_0 () Real)
(declare-fun e_ise_0_t () Real)
(assert (>= e_ise_0_0  0))
(assert (>= e_ise_0_t  0))
(assert (<= e_ise_0_0  1e6))
(assert (<= e_ise_0_t  1e6))
(declare-fun e_ise_1_0 () Real)
(declare-fun e_ise_1_t () Real)
(assert (>= e_ise_1_0  0))
(assert (>= e_ise_1_t  0))
(assert (<= e_ise_1_0  1e6))
(assert (<= e_ise_1_t  1e6))
(declare-fun e_istse () Real)
(declare-fun e_istse_0_0 () Real)
(declare-fun e_istse_0_t () Real)
(assert (>= e_istse_0_0  0))
(assert (>= e_istse_0_t  0))
(assert (<= e_istse_0_0  1e6))
(assert (<= e_istse_0_t  1e6))
(declare-fun e_istse_1_0 () Real)
(declare-fun e_istse_1_t () Real)
(assert (>= e_istse_1_0  0))
(assert (>= e_istse_1_t  0))
(assert (<= e_istse_1_0  1e6))
(assert (<= e_istse_1_t  1e6))
(declare-fun r () Real)
(declare-fun r_0_0 () Real)
(declare-fun r_0_t () Real)
(assert (>= r_0_0  0))
(assert (>= r_0_t  0))
(assert (<= r_0_0  1e6))
(assert (<= r_0_t  1e6))
(declare-fun r_1_0 () Real)
(declare-fun r_1_t () Real)
(assert (>= r_1_0  0))
(assert (>= r_1_t  0))
(assert (<= r_1_0  1e6))
(assert (<= r_1_t  1e6))
(declare-fun tau () Real)
(declare-fun tau_0_0 () Real)
(declare-fun tau_0_t () Real)
(assert (>= tau_0_0  0))
(assert (>= tau_0_t  0))
(assert (<= tau_0_0  2000))
(assert (<= tau_0_t  2000))
(declare-fun tau_1_0 () Real)
(declare-fun tau_1_t () Real)
(assert (>= tau_1_0  0))
(assert (>= tau_1_t  0))
(assert (<= tau_1_0  2000))
(assert (<= tau_1_t  2000))
(declare-fun tau_unsafe () Real)
(declare-fun tau_unsafe_0_0 () Real)
(declare-fun tau_unsafe_0_t () Real)
(assert (>= tau_unsafe_0_0  0))
(assert (>= tau_unsafe_0_t  0))
(assert (<= tau_unsafe_0_0  2000))
(assert (<= tau_unsafe_0_t  2000))
(declare-fun tau_unsafe_1_0 () Real)
(declare-fun tau_unsafe_1_t () Real)
(assert (>= tau_unsafe_1_0  0))
(assert (>= tau_unsafe_1_t  0))
(assert (<= tau_unsafe_1_0  2000))
(assert (<= tau_unsafe_1_t  2000))
(declare-fun x1 () Real)
(declare-fun x1_0_0 () Real)
(declare-fun x1_0_t () Real)
(assert (>= x1_0_0  0))
(assert (>= x1_0_t  0))
(assert (<= x1_0_0  1e6))
(assert (<= x1_0_t  1e6))
(declare-fun x1_1_0 () Real)
(declare-fun x1_1_t () Real)
(assert (>= x1_1_0  0))
(assert (>= x1_1_t  0))
(assert (<= x1_1_0  1e6))
(assert (<= x1_1_t  1e6))
(declare-fun x2 () Real)
(declare-fun x2_0_0 () Real)
(declare-fun x2_0_t () Real)
(assert (>= x2_0_0  0))
(assert (>= x2_0_t  0))
(assert (<= x2_0_0  1e6))
(assert (<= x2_0_t  1e6))
(declare-fun x2_1_0 () Real)
(declare-fun x2_1_t () Real)
(assert (>= x2_1_0  0))
(assert (>= x2_1_t  0))
(assert (<= x2_1_0  1e6))
(assert (<= x2_1_t  1e6))
(declare-fun x3 () Real)
(declare-fun x3_0_0 () Real)
(declare-fun x3_0_t () Real)
(assert (>= x3_0_0  0))
(assert (>= x3_0_t  0))
(assert (<= x3_0_0  1e6))
(assert (<= x3_0_t  1e6))
(declare-fun x3_1_0 () Real)
(declare-fun x3_1_t () Real)
(assert (>= x3_1_0  0))
(assert (>= x3_1_t  0))
(assert (<= x3_1_0  1e6))
(assert (<= x3_1_t  1e6))
(declare-fun time_0 () Real)
(assert (>= time_0  0))
(assert (<= time_0  300))
(declare-fun time_1 () Real)
(assert (>= time_1  0))
(assert (<= time_1  1))
(define-ode flow_1 ((= d/dt[DG]  0)(= d/dt[DG1]  0)(= d/dt[I] (-(/ S2(* 55(* 0.12 100)))(* 0.138 I)))(= d/dt[Q1] (+(+(-(+(-(-(* 0.0097 100))(* x1 Q1))(* 0.066 Q2)) 0)(*(* 0.0161 100)(- 1 x3)))(/(*(*(*(*(/ DG 180.1559) 1000) 0.8) tau)(exp(/(- tau) 40)))(^ 40 2))))(= d/dt[Q2] (-(* x1 Q1)(*(+ 0.066 x2) Q2)))(= d/dt[S1] (-(+(+(+(*(- 0.0006756158) e)(*(- 0.0600203)(- 0(+(+(-(+(-(-(* 0.0097 100))(* x1 Q1))(* 0.066 Q2)) 0)(*(* 0.0161 100)(- 1 x3)))(/(*(*(*(*(/ DG 180.1559) 1000) 0.8) tau)(exp(/(- tau) 40)))(^ 40 2))))))(*(- 1.172716e-7) e_int)) 5.5500000000000001e-02)(/ S1 55)))(= d/dt[S2] (/(- S1 S2) 55))(= d/dt[e] (- 0(+(+(-(+(-(-(* 0.0097 100))(* x1 Q1))(* 0.066 Q2)) 0)(*(* 0.0161 100)(- 1 x3)))(/(*(*(*(*(/ DG 180.1559) 1000) 0.8) tau)(exp(/(- tau) 40)))(^ 40 2)))))(= d/dt[e_int] (- r Q1))(= d/dt[e_ise] (*(* 1e-6 e) e))(= d/dt[e_istse] (*(*(*(* 1e-9 e) e) tau) tau))(= d/dt[r]  0)(= d/dt[tau]  1)(= d/dt[tau_unsafe]  0)(= d/dt[x1] (+(*(- 0.006) x1)(* 0.0034 I)))(= d/dt[x2] (+(*(- 0.06) x2)(* 0.056 I)))(= d/dt[x3] (+(*(- 0.03) x3)(* 0.024 I)))))
(define-ode flow_10 ((= d/dt[DG]  0)(= d/dt[DG1]  0)(= d/dt[I]  0)(= d/dt[Q1]  0)(= d/dt[Q2]  0)(= d/dt[S1]  0)(= d/dt[S2]  0)(= d/dt[e]  0)(= d/dt[e_int]  0)(= d/dt[e_ise]  0)(= d/dt[e_istse]  0)(= d/dt[r]  0)(= d/dt[tau]  1)(= d/dt[tau_unsafe]  1)(= d/dt[x1]  0)(= d/dt[x2]  0)(= d/dt[x3]  0)))
(assert (and 
(or ((and(= I_0_0 0.03351449275362304)(= x1_0_0 0.01899154566043506)(= x2_0_0 0.03128019323671478)(= x3_0_0 0.0268115942028984)(= tau_0_0 0.0)(= S1_0_0 3.0525)(= S2_0_0 3.0525)(= Q1_0_0(/(* 110(* 0.16 100)) 18))(= Q2_0_0 19.08024296516837)(= r_0_0(/(* 110(* 0.16 100)) 18))(= e_0_0(- r_0_0 Q1_0_0))(= e_int_0_0 0)(= e_ise_0_0(*(* 1e-6 e_0_0) e_0_0))(= e_istse_0_0(*(*(*(* 1e-9 e_0_0) e_0_0) tau_0_0) tau_0_0))(= tau_unsafe_0_0 0)(= DG_0_0 DG1_0_0)))
)
(>= DG1_0_0 88.2327)
(<= DG1_0_0 88.2407)
(>= DG1_0_t 88.2327)
(<= DG1_0_t 88.2407)
(>= DG1_1_0 88.2327)
(<= DG1_1_0 88.2407)
(>= DG1_1_t 88.2327)
(<= DG1_1_t 88.2407)
(= [DG_0_t DG1_0_t I_0_t Q1_0_t Q2_0_t S1_0_t S2_0_t e_0_t e_int_0_t e_ise_0_t e_istse_0_t r_0_t tau_0_t tau_unsafe_0_t x1_0_t x2_0_t x3_0_t ] (integral 0.0 time_0 [DG_0_0 DG1_0_0 I_0_0 Q1_0_0 Q2_0_0 S1_0_0 S2_0_0 e_0_0 e_int_0_0 e_ise_0_0 e_istse_0_0 r_0_0 tau_0_0 tau_unsafe_0_0 x1_0_0 x2_0_0 x3_0_0 ] flow_1))
(and(<=(/ Q1_0_t(* 0.16 100)) 16)(>=(/ Q1_0_t(* 0.16 100)) 16))
(= DG_1_0  DG_0_t)(= DG1_1_0  DG1_0_t)(= I_1_0  I_0_t)(= Q1_1_0  Q1_0_t)(= Q2_1_0  Q2_0_t)(= S1_1_0  S1_0_t)(= S2_1_0  S2_0_t)(= e_1_0  e_0_t)(= e_int_1_0  e_int_0_t)(= e_ise_1_0  e_ise_0_t)(= e_istse_1_0  e_istse_0_t)(= r_1_0  r_0_t)(= tau_1_0  0)(= tau_unsafe_1_0  tau_unsafe_0_t)(= x1_1_0  x1_0_t)(= x2_1_0  x2_0_t)(= x3_1_0  x3_0_t)(= [DG_1_t DG1_1_t I_1_t Q1_1_t Q2_1_t S1_1_t S2_1_t e_1_t e_int_1_t e_ise_1_t e_istse_1_t r_1_t tau_1_t tau_unsafe_1_t x1_1_t x2_1_t x3_1_t ] (integral 0.0 time_1 [DG_1_0 DG1_1_0 I_1_0 Q1_1_0 Q2_1_0 S1_1_0 S2_1_0 e_1_0 e_int_1_0 e_ise_1_0 e_istse_1_0 r_1_0 tau_1_0 tau_unsafe_1_0 x1_1_0 x2_1_0 x3_1_0 ] flow_10))
(or ((= tau_1_t 1)))))
(check-sat)
(exit)

 import delimited "C:\Users\pdadgostar\Downloads\synthetic_rdd_data.csv"

//Inspect the Data
list in 1/10
describe
summarize

//Visualize discontinuity
twoway (scatter outcome forcing_var) ///
       , xline(50, lcolor(red) lpattern(dash)) ///
       title("Outcome vs. Forcing Variable") ///
       xlabel(0(10)100) xtitle("Forcing Variable") ///
       ytitle("Outcome")
	   
//Fit Separate Regressions
reg outcome forcing_var if forcing_var < 50
reg outcome forcing_var if forcing_var >= 50	   

//Run RDD: Robust
ssc install rdrobust
rdrobust outcome forcing_var, c(50)

//Check Sensitivity with Bandwidth Selection
rdrobust outcome forcing_var, c(50) bwselect(mserd)

//Plot Local Polynomial Regression
rdplot outcome forcing_var, c(50)

//Run fuzzy RDD
rdrobust outcome forcing_var, fuzzy(treatment) c(50)


//Fuzzy vs Sharp RDD:
//In Fuzzy RDD, the probability of receiving treatment changes discontinuously at the cutoff, but the treatment assignment is not strictly determined by the forcing variable. Units near the cutoff might or might not receive the treatment, even if they are on the same side of the cutoff.

//In sharp RDD, the treatment assignment is perfectly determined by the forcing variable crossing the cutoff. Every unit on one side of the cutoff receives the treatment, and no units on the other side do.
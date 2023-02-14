// Figure 1
. reg savings GDPGrowth Inflation interest uncertainty Unemployment, vce(robust)

// Figure 2 
. correlate

// Figure 3 
. reg savings GDPGrowth Inflation interest uncertainty Unemployment

// Figure 4
. estat hettest

// Figure 5
. gen lnsavings = log(savings)
. gen lnGDPGrowth = log(GDPGrowth)
. gen lnInflation = log(Inflation)
. gen lnuncertainty = log(uncertainty)
. gen lnunemployment = log(Unemployment)
. reg lnsavings lnGDPGrowth lnInflation lnuncertainty lnunemployment, r

// Figure 6
. ssc install grqreg, replace
. qreg lnsavings lnGDPGrowth lnInflation lnuncertainty lnunemployment
. grqreg







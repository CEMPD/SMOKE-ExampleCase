#!/bin/csh -fx


#Script to run the biogenic SMOKE-TestCase 

source ../directory_definitions.csh

setenv BIOGENIC_INPDIR "$CASEINPUTS/biogenics/" 

setenv BEISFAC "$BIOGENIC_INPDIR/beld5_facs_csv.17Mar2022.jmv"
setenv BELD5 "$BIOGENIC_INPDIR/beld5.12US1.19Dec20.aggwndj.ncf"
setenv B3GRD "$BIOGENIC_INPDIR/b3grd.2016v3.2022Apr20.12US1.ncf"


${SMOKE_LOCATION}/normbeis3

exit

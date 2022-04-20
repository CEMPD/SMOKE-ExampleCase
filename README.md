# SMOKE-TestCase
## The files in this distribution serve as a test for the SMOKE installation 
## The structure resembles the 2017 NEI release with modifications to run for a single month (July 2017)

## Users should be able to follow the next steps:
1. Download and install the TestCase data from (link to be provided) or 
   Link to an existing 2017NEI download (i.e. from https://gaftp.epa.gov/air/emismod/2017/)
2. Get a copy of the SMOKE-TestCase scripts and place them in the structure
```
git clone -b main https://github.com/CEMPD/SMOKE-TestCase.git SMOKE-TestCase

```
3. Modify the paths to point to the correct SMOKE installation, input data, and script location 
   found in directory_definitions.csh  
 
4. Run the scripts for each sector  
pt_oilgas onetime & daily scripts under /scripts/point
np_oilgas script under /scripots/nonpoint  

5. Verify the results  



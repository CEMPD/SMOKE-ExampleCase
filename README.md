# SMOKE-TestCase

The files in this repository serve as a suite of tests for the SMOKE programs and rely on having successfully installed SMOKE and its prerequisites in your system. Currently, tests for the following sectors are included:
- np_oilgas  
- pt_oilgas
- biogenics (BEIS4) 

To test SMOKE and its components, users have to follow the next steps:

1. Make a test directory in your system where all code and inputs will be placed, i.e.  
```
cd someplaceinyoursystem/
mkdir /path_to_your_SMOKE_test_folder/
cd /path_to_your_SMOKE_test_folder/
```
and get a copy of the SMOKE-TestCase scripts
```
git clone -b main https://github.com/CEMPD/SMOKE-TestCase.git SMOKE-TestCase
```
2. Download the Test Case input data from here:  
https://drive.google.com/drive/folders/18hiiGSlFQ6gWtXmEdkemBwoyUly1dJEV?usp=sharing

Unzip the input data archive:
```
tar -xvf SMOKE-TestCase-inputs.tar.gz
```
3. Navigate to the SMOKE-TestCase scripts folder and edit run_settings.txt  
```
cd SMOKE-TestCase/scripts/
vim run_settings.txt
```
Modify the following paths to point to the correct for your system:

INSTALL_DIR    : Root directory (i.e. someplaceinyoursystem/ under which your keep your SMOKE-TestCase)  
MET_ROOT       : Full path of MCIP (meteorology) files (in this case MCIP output for July 2017 12US1 domain is included in the input dataset, so for our TestCase someplaceinyoursystem/mcip)  
MET_ROOT_3D    : Path to the full layered METCRO3D files (same as above, if you are using the TestCase inputs)  
SMOKE_LOCATION : Path to the directory with the SMOKE executables  
IOAPI_LOCATION : Path to the directory I/O API utilities  

4. Go to the scripts directory for the nonpoint sector and run the onetime script:
```
cd nonpoint
./Annual_np_oilgas_12US1_2017gb_17j_TestCase.csh >& np_oilgas_TestCase.log
```
You should be able to check the log file and and verify that the script and programs finished running successfully.
The structure within /path_to_your_SMOKE_test_folder/SMOKE-TestCase/ should have expanded and you can see your output files for this sector.  

5. Go to the scripts directory for the point sector and run the onetime script:
```
cd ../point
./Annual_pt_oilgas_onetime_12US1_2017gb_17j_TestCase.csh >& pt_oilgas_onetime_TestCase.log
```
Check the logs and verify the script and programs finished running successfully for the onetime script.
Once the onetime step is complete, run the daily script: 
```
./Annual_pt_oilgas_daily_12US1_2017gb_17j_TestCase.csh >& pt_oilgas_daily_TestCase.log
```
Verify the script and programs finished running successfully for the daily script.

Users can download the output dataset, found in the same folder and compare against their output for each sector.

In addition, users can now test the latest version of BEIS4, used to derive emission estimates for the biogenic sector.

To run the biogenic sector scripts, download and unzip the biogenic input package from the same directory and navigate to the biogenics folder:

```
cd ../biogenics
./normbeis4.final.csh >& normbeis4_TestCase.log
./tmpbeis4.2020.csh >& tmpbeis4_TestCase.log
```

Users can also download the biogenic-output dataset, found in the same folder and compare against their BEIS4 output.

If there are no errors and no differences in the output files for the above sectors your SMOKE setup is working! 



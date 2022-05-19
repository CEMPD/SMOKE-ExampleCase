# SMOKE-TestCase

The files in this repository serve as a quick test for the SMOKE installation from https://github.com/CEMPD/SMOKE   

The structure relies on:
1. Having successfully installed SMOKE and its prerequisites in your system according to the guide above:

2. Choose and make a test location in your system, i.e.  
```
cd someplaceinyoursystem/
mkdir /path_to_your_SMOKE_test_folder/
cd /path_to_your_SMOKE_test_folder/
```
and get a copy of the SMOKE-TestCase scripts
```
git clone -b main https://github.com/CEMPD/SMOKE-TestCase.git SMOKE-TestCase
```
3. Download the test case input data from here 
https://drive.google.com/file/d/15QQTs7nILXk613hJlZTGbDeaZLqnaYuP/view?usp=sharing  

Place them in your test location and decompress the archive:
```
tar -xvf SMOKE-TestCase-inputs-outputs.tar.gz
```
For testing the biogenic sector download the biogenic package

Place them in your test location and decompress the archive:
```
tar -xvf SMOKE-TestCase-biogenics-inputs-outputs.tar.gz
```

4. Navigate to the SMOKE-TestCase scripts folder and open run_settings.txt with an editor of your choice 
```
cd SMOKE-TestCase/scripts/
vim run_settings.txt
```
Modify the following envirnonment variables in file pointing to the correct location for your system:

INSTALL_DIR    : Root directory (i.e. someplaceinyoursystem/ under which your keep your SMOKE-TestCase)  
MET_ROOT       : Full path of MCIP (meteorology) files (in this case MCIP output for July 2017 12US1 domain is included in the input dataset, so for our TestCase someplaceinyoursystem/mcip)  
MET_ROOT_3D    : Path to the full layered METCRO3D files (same as above, if you are using the TestCase inputs)  
SMOKE_LOCATION : Path to the directory with the SMOKE executables  
IOAPI_LOCATION : Path to the directory I/O API utilities  

5. Navigate in the scripts directory for the nonpoint sector and run the onetime script:
```
cd nonpoint
./Annual_np_oilgas_12US1_2017gb_17j_TestCase.csh >& np_oilgas_TestCase.log
```
You should be able to check the log file and and verify that the script and programs finished running successfully.
The structure within /path_to_your_SMOKE_test_folder/SMOKE-TestCase/ should have been expanded and you can evaluate your output files for this sector.  

6. Navigate in the scripts directory for the point sector and run the onetime script:
```
cd ../point
./Annual_pt_oilgas_onetime_12US1_2017gb_17j_TestCase.csh >& pt_oilgas_onetime_TestCase.log
```
Check the logs and verify the script and programs finished running successfully for the onetime script.
Run the daily script: 
```
./Annual_pt_oilgas_daily_12US1_2017gb_17j_TestCase.csh >& pt_oilgas_daily_TestCase.log
```
Verify the script and programs finished running successfully for the daily script.
You can evaluate your output files for this sector as well.

7. If there are no errors and no differences in the output files for the above sectors your SMOKE setup is working! 



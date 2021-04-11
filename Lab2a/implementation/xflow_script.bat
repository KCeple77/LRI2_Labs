@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc6slx45fgg676-2 -nt timestamp -bm system.bmm "E:/FaksHub/2020_2021/2.Semester_2020_2021/LRI2/Labs/LRI2_Labs/Lab2a/implementation/system.ngc" -uc system.ucf system.ngd 

@REM #
@REM # Command line for map
@REM #
map -o system_map.ncd -w -pr b -ol high -timing -detail system.ngd system.pcf 

@REM #
@REM # Command line for par
@REM #
par -w -ol high system_map.ncd system.ncd system.pcf 

@REM #
@REM # Command line for post_par_trce
@REM #
trce -e 3 -xml system.twx system.ncd system.pcf 


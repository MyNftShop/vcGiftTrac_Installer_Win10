#vcGiftTrac_Installer_Win10 

##The basic steps to create the installer were: 

1. After building the release version use windeployqt (a static build is not necessary)

C:\Users\chris\Documents\develop-design\qtprojects\build-vcGiftTrac-Desktop_Qt_5_5_1_MinGW_32bit-Release\release>C:\Qt\5.5\mingw492_32\bin\windeployqt.exe ./

2. Copy additional Non-Qt-dlls from C:\Qt\5.5\mingw492_32\bin to the release folder:
  icudt53.dll
  icuin53.dll
  icuuc53.dll
  libgcc_s_dw2-1.dll
  libstdc+–6.dll
  libwinpthread-1.dll

3. Create the relevant folders and files for the Installer e.g. config.xml and package.xml as required by the Qt Installer Framework and copy the content of the release folder into the packages/data-subfolder

4. Create the setup.exe using

C:\Users\chris\Documents\develop-design\_installer>C:\Qt\QtIFW2.0.1\bin\binarycreator.exe --offline-only -c vcgifttrac_v0_2_1_installer\config\config.xml -p vcgifttrac_v0_2_1_installer\packages vcgifttrac_v0.2.1_setup.exe






@echo off
set WinRAR="D:\Program Files\WinRAR\WinRAR.exe"
set jarsigner="C:\Program Files\Java\jdk-17.0.1\bin\jarsigner.exe"

set /p rawApk=请输入原始文件名（不带 .apk 后缀）：

echo 正在备份原始文件
cd files
copy %rawApk%.apk temp1.apk

echo 删除 APK 包中的 lib/x86 与 META-INF 文件夹并重新打包
%WinRAR% d temp1.apk lib\x86 META-INF

echo 正在对文件进行签名
%jarsigner% -verbose -keystore ..\mfjl.keystore -storepass mfjlsy -signedjar temp2.apk temp1.apk mfjl.keystore

echo 正在对文件进行优化
..\zipalign.exe -v 4 temp2.apk %rawApk%_final.apk

del temp1.apk
del temp2.apk

:end
pause
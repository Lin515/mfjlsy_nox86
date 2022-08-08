# 2022-8-8 魔法寄录已寄

# mfjlsy_nox86
 去除魔法纪录手游安装包的 x86 库，以解决模拟器上无法运行的问题。

按照贴吧 @鹿目焰 [关于更新后无法在部分模拟器/虚拟机运行的问题](https://tieba.baidu.com/p/7776245828) 所说的方法处理。

如果需要自己重新签名打包 APK，请阅以下：

### 必须工具

1. [WinRAR](https://www.rarlab.com/) 用来删除文件并重新打包 APK。
2. [JDK](https://www.oracle.com/java/technologies/downloads/#jdk18-windows) 需要用其中的 jarsigner.exe 对新的 APK 文件进行签名。

### 步骤

1. 用文本编辑器打开 make.bat，然后设置 WinRAR.exe 与 jarsigner.exe 的路径，并保存。
2. 将官方的原始 APK 文件放入 files 目录。
3. 双击执行 make.bat 输入原始文件的不带 .apk 后缀的文件名并回车。
4. 批处理执行完毕后，files 目录下 原始文件名 + _final 的新文件便是经过处理后的最终文件。

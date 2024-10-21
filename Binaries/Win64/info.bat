& "soft D:\Program Files\Microsoft Visual Studio\2022\Professional\VC\Tools\MSVC\14.41.34120\bin\Hostx86\x64\dumpbin.exe" /exports /typelib UnrealEditor-UBTMake.dll

@REM 在 PowerShell 中，& 用于调用一个可执行文件或脚本。这意味着后面的路径是要执行的程序。

@REM "...": dumpbin 工具的完整路径。
@REM dumpbin 是 Visual Studio 提供的一个工具，用于显示可执行文件和 DLL 的各种信息，包括导出和导入的函数、符号等。

@REM /exports: 列出 DLL 中导出的函数和数据(显示该 DLL 中可以被其他程序调用的函数名和相关信息)

@REM /typelib: 显示可以通过该库使用的接口、类型

@REM 要分析的动态链接库文件名。
@REM dumpbin 会读取这个 DLL，并提供其导出函数和类型库的信息。
g++ -c -DBUILDING_EXAMPLE_DLL -Wall -fPIC -o obj\toyDllWindows.o src\toyDllWindows\toyDllWindows.cpp
g++ -shared -o libtoyDll.dll obj\toyDllWindows.o -Wl,--out-implib,libtoyDll.a
g++ -c -o obj\toyMainWindows.o src\toyMainWindows\toyMainWindows.cpp
g++ -o bin\toyMainWindows.exe obj\toyMainWindows.o -L. -Wl,-rpath=.\ -ltoyDll
.\bin\toyMainWindows.exe
PAUSE
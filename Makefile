TARGET:=bin/toyMain

$(TARGET):obj/toyMain.o lib/libtoyDll.so
	@echo "Linking to form final executable"
	g++ -o $(TARGET) $^ -L/home/TSu/cpp/lib/ -Wall -Wl,-rpath=/home/TSu/cpp/lib -ltoyDll
	# Order matters

obj/toyMain.o:src/toyMain/toyMain.cpp
	@echo "Creating object."
	g++ -c -Wall -o $@ $^

toyDllLib:lib/libtoyDll.so
lib/libtoyDll.so:obj/toyDll.o
	@echo "Creating the toyDll library."
	g++ -shared -Wl,-soname,libtoyDll.so -o $@ obj/toyDll.o

obj/toyDll.o:src/toyDll/toyDll.cpp
	@echo "Compiling the toyDll object."
	g++ -c -Wall -fPIC -o obj/toyDll.o src/toyDll/toyDll.cpp

.PHONY:clean
clean:
	@echo "cleaning"
	rm bin/* || true
	rm lib/* || true
	rm obj/* || true

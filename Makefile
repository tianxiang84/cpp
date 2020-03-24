TARGET:=bin/toyMain

$(TARGET):obj/toyMain.o
	@echo "Linking to form final executable"
	g++ -o $(TARGET) $^ -L/home/TSu/cpp/lib/ -Wall -Wl,-rpath=/home/TSu/cpp/lib -ltoyDll
	# Order matters

obj/toyMain.o:src/toyMain/toyMain.cpp
	@echo "Creating object."
	g++ -c -Wall -o $@ $^

.PHONY:clean
clean:
	@echo "cleaning"
	rm bin/toyMain || true
	rm obj/toyMain.o || true

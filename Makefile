.PHONY: all clean directories dynamics master server watchdog run

all: clean directories dynamics master server watchdog

clean:
	@rm -rf bin
	@rm -rf logs

directories: 
	mkdir bin
	mkdir logs

master: 
	g++ src/master.cpp -lncurses -lm -lrt -lpthread -o bin/master 

server: 
	g++ src/server.cpp -lncurses -lm -lrt -lpthread -o bin/server

dynamics: 
	g++ src/dynamics.cpp -lncurses -lm -lrt -lpthread -o bin/dynamics 

watchdog: 
	g++ src/watchdog.cpp -lncurses -lm -lrt -lpthread -o bin/watchdog 

run:
	gnome-terminal -- "./bin/master" 

	sleep 1
	gnome-terminal -- "./bin/watchdog"

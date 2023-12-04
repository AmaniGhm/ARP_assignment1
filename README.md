# ARP_assignment1

Done by:  
Lidia LOUBAR ID: 5989908  
Amani GHOMRANI ID: 6237068  
## User Manual and Documentation:
### User Manual:
#### Requirements:
To install the ncurses library, simply open a terminal and type the following command:
```console
sudo apt-get install libncurses-dev
```
#### Compiling and Running the Program
- Clone the repository:
```bash
git clone https://github.com/AmaniGhm/ARP_assignment1.git
```
- Navigate to the cloned repository directory:
 ```bash
cd ARP_assignment1
```
-Compile the program using the `Makefile` with the command:

```bash
$ make
```

-Run the program:
 ```bash
$ make run
``` 


## Project Structure:

The repository is organized as follows:
- the `src` folder contains all the source code.

- the `headerFiles` folder contains all the header files.

After compiling the program other two directories will be created:

- the `bin` folder contains all the executable files
- the `Logs` folder will contain all the log files.
## Processes
The program is composed of 4 processes:
# master.cpp
-The first process launched
-Responsible for initiating other processes except for the `watchdog`
# dynamics.cpp
-Controls the dynamics of the drone within the system.
-Continuously updates the drone's position based on user input, communicating this information with the `server`.
# server.cpp
-Manages shared memory for drone position.
-Logs drone position updates with timestamps.
# watchdog.cpp
-Monitors process execution by sending signals every 5 seconds.
-Resends signals multiple times if not received.
-Terminates all processes if signals are consistently not received.


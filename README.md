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
#### To Compile and Run the Program:
- Clone the repository using:
```bash
git clone https://github.com/AmaniGhm/ARP_assignment1.git
```
- When done, execute the `Makefile` with the command:

```bash
$ make
```

- Run the `Makefile` to run the program using:
 ```bash
$ make run
``` 


## Folders tree:

The repository is organized as follows:
- the `src` folder contains all the source code.

- the `src/include` folder contains all the header files.

- the `doc` folder contains all the auto generated files related to the documentation.

After compiling the program other two directories will be created:

- the `bin` folder contains all the executable files
- the `Logs` folder will contain all the log files.
![plot](./images/tree.png)
## Processes
The program is composed of 6 processes:
- `master.cpp` is the first process to be executed and it takes care of launching all the other processes. In case one of them terminates unexpectedly it prints the status to the screen, when ctrl+c is pressed the master process will kill all the processes and terminate.
- `command_console.c` creates a window where you can send commands to the two motors, using a ncurses GUI
- `M1.cpp` is the process related to the motor that makes the hoist move in the x-axis and it listens for commands sent by the command window, computes the new x component of the position, and sends the data to `RW.cpp`
- `M2.cpp` does the same thing as `M1.cpp` for the y-axis.
- `RW.cpp` gets the position from the two motors processes and applies a 5% random error to the measurement, to better simulate error accumulations in the real case scenarios, and send the position to the `inspection_console.c` process
- `inspection_console.c` gets the position from the `RW.cpp` process and displays the hoist on a window, using ncurses GUI. 
- `WatchDog.cpp` monitors the execution of the process, if there is no activity for 60s, it resets the hoist position.

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
The program is composed of 4 processes:
- `master.cpp` is the first process to be executed and it takes care of launching all the other processes, except the `watchdog`.
- `dynamics.cpp` 
- `server.cpp`
- `watchdog.cpp` monitors the execution of the process by sending signals each 5 seconds, if the signals is not received it resends it multiple times , if the process is still not receiving it it terminates everything 

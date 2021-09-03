<<<<<<< HEAD
# is105-lab3
* hello.asm - ELF varianten
* hellom.asm - Mach-O varianten
* hellow.asm - Windows 10 varianten 

For Windows 10 (dvs. hellow.asm) så må man lenke til kjernebibliotek kernel32.dll:

golink /entry:Start /console kernel32.dll hellow.obj
=======
# AMV-school-project
## **Project setup & installation** 

Make sure you have docker installed and running, and follow the proper installation based on your OS

##### **Datebase setup**

Open the folder named database and run the sql script for creating an instance of the DB.

##### **Windows** 
Open your cmd/terminal in the project folder, and run the following command:
```bash
build
```
##### **MacOS** 
Open your cmd/terminal in the project folder, and run the following commands:

For making the script excutable
```bash
chmod +x build.sh
```
For running the script
```bash
./build.sh
```

>>>>>>> dea056fe08ec105a10519529bc05349168141752

# is105-lab3
* hello.asm - ELF varianten
* hellom.asm - Mach-O varianten
* hellow.asm - Windows 10 varianten 

For Windows 10 (dvs. hellow.asm) så må man lenke til kjernebibliotek kernel32.dll:

golink /entry:Start /console kernel32.dll hellow.obj

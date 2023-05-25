@echo off
set input=main
D:\masm32\bin\ml /c /Zd /coff %input%.asm
D:\masm32\bin\Link /SUBSYSTEM:CONSOLE %input%.obj
cls
%input%
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

(MAINLOOP)
  @FILL
  M=0
  @24575
  D=A
  @OFFSET
  M=D

  @KBD
  D=M
  @SETSCREEN
  D;JEQ
  @FILL
  M=-1

(SETSCREEN)
  @FILL
  D=M
  @OFFSET
  A=M
  M=D
  @OFFSET
  M=M-1
  D=M
  @SCREEN
  D=D-A
  @MAINLOOP
  D;JEQ
  @SETSCREEN
  0;JEQ

CPUtypeINIT
===========

This INIT changes the CPU type Mac OS reports to PowerPC 603.

More technically, it changes the responses to Gestalt() for selectors
  - gestaltNativeCPUtype
  - gestaltNativeCPUfamily
to gestaltCPU603.


Requirements
------------

- System 7.5


To Use
------

Put the INIT file in the Extensions folder of the System Folder.


To Build
--------

You need MPW and Pascal compiler to build this INIT.
CodeWarrior (with Pascal plugin) should also work, but you need to configure by
yourself.

You may want to change newline codes to CR before letting MPW handle them.
In such case, switchcrlf.pl may or may not work for you, or just use any 
text editor you like.

Here are the steps for building after starting up MPW:

1. Set up the current directory
2. Type 'make' and hit Enter
3. Select the generated text and hit Enter again


Advanced Usage
--------------

By editing a resource 'CPUT' (128) you can customize the CPU type Gestalt() 
will answer. 
(It has the ResEdit template so I hope you can guess how to edit.)
For the values see Gestalt.h of the Universal Headers. (or just google for it)

You need to restart the computer to make the changes take effect.

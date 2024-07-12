#   File:       Makefile
#   Target:     CPUTypeINIT
#   Created:    Friday, July 12, 2024 01:35:00 PM


MAKEFILE        = Makefile
¥MondoBuild¥    = {MAKEFILE}  # Make blank to avoid rebuilds when makefile is modified

ObjDir          = :
Includes        = 

Sym-68K         = -sym off

POptions        = {Includes} {Sym-68K} -model near -mc68020 


### Source Files ###

SrcFiles        =  ¶
				  CPUTypeINIT.p


### Object Files ###

ObjFiles-68K    =  ¶
				  "{ObjDir}CPUTypeINIT.p.o"


### Libraries ###

LibFiles-68K    =  ¶
				  "{Libraries}MathLib.o" ¶
				  "{PLibraries}PasLib.o" ¶
				  "{Libraries}MacRuntime.o" ¶
				  "{Libraries}IntEnv.o" ¶
				  "{Libraries}ToolLibs.o" ¶
				  "{Libraries}Interface.o"


### Default Rules ###

.p.o  Ä  .p  {¥MondoBuild¥}
	{Pascal} {depDir}{default}.p -o {targDir}{default}.p.o {POptions}

### Build Rules ###

CPUTypeINIT  ÄÄ  {ObjFiles-68K} {LibFiles-68K} {¥MondoBuild¥}
	Link ¶
		-o {Targ} ¶
		{ObjFiles-68K} ¶
		{LibFiles-68K} ¶
		{Sym-68K} ¶
		-mf -d ¶
		-m INITENTRY ¶
		-t 'INIT' ¶
		-c '????' ¶
		-model near ¶
		-sg CPUTypeINIT ¶
		-rt 'INIT=128' ¶
		-ra 'resSysHeap' 


CPUTypeINIT  ÄÄ  CPUTypeINIT.r
	Rez -a -o {Targ} ¶
		CPUTypeINIT.r


CPUTypeINIT  ÄÄ  CPUTypeIcon.r
	Rez -a -o {Targ} ¶
		CPUTypeIcon.r
	SetFile -a C {Targ}

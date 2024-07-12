unit CPUTypeINIT;
interface
	procedure INITentry;

implementation
	uses
		Memory, OSUtils, GestaltEqu, Resources;

	type
		GestaltData = record
			branch: UInt16;
			cputype: SInt32;
			cpufamily: SInt32;
		end;
		GestaltDataPtr = ^GestaltData;

procedure INITentry;
var
	err: OSErr;
	oldCPUTypeFunc: SelectorFunctionUPP;
	oldCPUFamilyFunc: SelectorFunctionUPP;
	cputype: LongInt;
	cpufamily: LongInt;
	typehandle: Handle;
begin
	typehandle := GetResource('CPUT', 128);
	if typehandle <> nil then begin
		cputype := GestaltDataPtr(typehandle^)^.cputype;
		cpufamily := GestaltDataPtr(typehandle^)^.cpufamily;
		ReleaseResource(typehandle);
	end
	else begin
		cputype := gestaltCPU603;
		cpufamily := gestaltCPU603;
	end;
	
	err := ReplaceGestaltValue(gestaltNativeCPUtype, cputype);
	err := ReplaceGestaltValue(gestaltNativeCPUfamily, cpufamily);
end;


end.

#include "Gestalt.r"
#include "Types.r"

type 'CPUT' {
	hex integer;
	hex longint;
	hex longint;
};


resource 'CPUT' (128, sysheap) {
	0,
	gestaltCPU603,
	gestaltCPU603
};




type 'TMPL' {
	array {
		pstring;
		literal longint;
	};
};

resource 'TMPL' (6001, "CPUT", purgeable) {
	{
		"pad", 'HWRD',
		"CPU type", 'HLNG',
		"CPU family", 'HLNG'
	}
};


resource 'vers' (1, purgeable) {
	$01, $00, final, 0,
	verUS, "1.0", "1.0, made by yuki 2024"
};

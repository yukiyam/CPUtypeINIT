#!/usr/bin/perl

# switchcrlf.pl [-u|-m|-p]

use Getopt::Std;
$Getopt::Std::STANDARD_HELP_VERSION = 1;

@textfiles = (
	"CPUTypeINIT.p",
	"CPUTypeINIT.r",
	"CPUTypeIcon.r",
	"Makefile"
);


$to_cr = 0;
$to_lf = 0;
$preserve_dates = 0;

#$VERSION = "1.0";
sub HELP_MESSAGE {
	my $fh = shift;
	my @lines = (
		"switchcrlf.pl - perform in-place CR<->LF conversion",
		"",
		"usage: switchcrlf.pl (-u|-m) [-p] [<textfile>]",
		"options:",
		"  -u  # newline to LF",
		"  -m  # newline to CR",
		"  -p  # preserve modification date"
	);
	for (@lines) {
		print $fh $_, "\n";
	}
}

getopts('mup');

$to_cr = $opt_m if defined $opt_m;
$to_lf = $opt_u if defined $opt_u;
$preserve_dates = $opt_p if defined $opt_p;

@textfiles = @ARGV if $#ARGV >= 0;

if ($to_cr) {
	$/ = "\12";
	$nl = "\15";
}
elsif ($to_lf) {
	$/ = "\15";
	$nl = "\12";
}
else {
	print STDERR "no conversions to do [-m or -u?]\n";
	exit(0);
}

for $textf (@textfiles) {
	print STDERR "converting $textf...\n";
	my $data = '';
	my @statbuf = stat($textf);
	open(FH, '<', $textf) or do {
		print "can't open; skipping $textf\n";
		next;
	};
	while (<FH>) {
		s|$/|$nl|g;
		$data = $data . $_;
	}
	close FH;
	open(OFH, '>', $textf) or do {
		print "can't open for writing; skipping $textf\n";
		next;
	};
	print OFH $data;
	close OFH;
	utime($statbuf[8], $statbuf[9], $textf) if $preserve_dates;
}

print STDERR "done.\n";

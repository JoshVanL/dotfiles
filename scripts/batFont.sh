#!/usr/bin/perl

my $acpi;
my $percent;
my $bat_number = $ENV{BLOCK_INSTANCE} || 0;

# read the first line of the "acpi" command output
open (ACPI, "acpi -b | grep 'Battery $bat_number' |") or die;
$acpi = <ACPI>;
close(ACPI);

# fail on unexpected output
if ($acpi !~ /: (\w+), (\d+)%/) {
	die "$acpi\n";
}

$percent = $2;

if ($percent > 95) {
    print " ";
} elsif ($percent >= 75) {
    print " ";
} elsif ($percent >= 50) {
    print " ";
} elsif ($percent >= 25) {
    print " ";
} elsif ($percent >= 5) {
    print " ";
}

exit(0)

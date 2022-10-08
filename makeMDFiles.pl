#!/usr/bin/env perl

# Let my obsession with perl continue!

use strict;
use warnings;
use File::Path 'make_path';
use Getopt::Long;
use Pod::Usage;
use autodie; # I'm a bit sick of perl critic telling me to write "|| die"
use File::Basename;
use feature 'say';

my $defaultText = "# {CAPTION}\n**WIP**\n";
my $showHelp;

# Get command line options and "deserialize" them into variables

GetOptions("help|h" => \$showHelp, "text|t=s" => \$defaultText);

# Print help if prompted

pod2usage(1) if($showHelp);

# Filenames are left in ARGV by GetOptions

# Loop through them

for(@ARGV) {
	# Unset the input file seperator so the whole file is read at once
	local $/;
	# Get file's parent directory and ignore everything else
	my ($filename, $parentDir, $suffix) = fileparse($_);
	# Open the file for reading
	open my $FH, '<', $_;
	# Read the file, split it by lines and loop through them
	for(split /\r?\n/, do {
		<$FH>;
	}) {
		# Is there a link on this line?
		while(/\[(.*)\]\(([^\)]+)\)/g) {
			my $caption = $1;
			my $linkedFile = $2;
			# Skip if file exists
			next if -e $parentDir.$linkedFile;
			# Yes, make the path to the file, make the file (using filename from matching group 2), write it, and close it
			open my $OH, '>', $parentDir.$linkedFile;
			# Make path if filename has slashes in it
			make_path($linkedFile) if $linkedFile =~ /[\\\/]/;
			# Replace {CAPTION} with the link caption
			print $OH $defaultText =~ s/\{CAPTION\}/$caption/gr;
			close $OH;
			say "Made file $linkedFile";
			# After this, while loop tries to find another match (link)
		}
	}
	# Close the file
	close $FH;
}

# Documentation

=head1 NAME

makeMDFiles.pl - Create non-existent files link in a specific markdown file(s)

=head1 USAGE

makeMDFiles[.pl] [options] [files]

=head1 OPTIONS

=over 4

=item B<--help, -h>

Show help and exit.

=item B<--text, -t>

Set text to create file with (default is **WIP**).

=back

=cut
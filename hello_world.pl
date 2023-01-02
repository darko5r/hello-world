#!/usr/bin/perl -w

use Term::ReadKey;

# Define the menu options
my @menu_items = (
    "Write 'Hello, World!' in normal order",
    "Write 'Hello, World!' in reverse order",
    "Read 'Hello, World!' with computer voice",
    "Quit"
);

# Display the menu and get the user's selection
while (1) {
    print "\nPlease select an option:\n";
    for (my $i = 0; $i < @menu_items; $i++) {
        print "$i: $menu_items[$i]\n";
    }

    my $key = ReadKey(-1);
    if ($key =~ /^\d$/) {
        my $selection = int($key);
        if ($selection == 0) {
            print "Hello, World!\n";
        } elsif ($selection == 1) {
            # Define the string to be reversed
            my $string = "Hello, World!\n";
            print scalar reverse("$string");
        } elsif ($selection == 2) {
            # Add code to read "Hello, World!" with a computer voice here / this part is not implemented yet / e-speek
        } elsif ($selection == 3) {
            last;
        }
    }
}

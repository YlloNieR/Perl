say "Decoder";
say "choose an option";
say "option 1 - Shift cipher alias Caesar Cipher\noption 2 - ";

my $option = get;

if $option == 1 {
    say "\nShift cipher alias Caesar Cipher - option $option";
    my $content   = slurp "ch7.bin", enc => "latin1";
    say $content;    
}
else{
    print "\nwork in progress";
}
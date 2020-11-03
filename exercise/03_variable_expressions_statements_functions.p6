my $miles = 26.2;
say 'miles E1 = ', $miles;
say 'miles E2 = ', $miles * 1.61;

sub print-songtext () {
    say "what we got left is just me and you";
    say "bad girl";
}

print-songtext();


sub do-twice($code) {
    $code();
    $code();
    $code();
    $code();
}

sub do-fourth($code) {
    $code();
    $code();
    $code();
    $code();
}

sub print-squareOBEN () {
    say "+ - - - - + - - - - +";
    }

sub print-squareZWISCHEN () {
    say "|         |         |";
    }

sub print-square () {
    print-squareOBEN();
    do-fourth &print-squareZWISCHEN;
    print-squareOBEN();
    do-fourth &print-squareZWISCHEN;
    print-squareOBEN();
}

print-square;

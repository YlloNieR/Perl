say "guess my number".uc;
my $numberPC = (1..100).pick;
say $numberPC;

#1. Versuch
my $numberHUMAN1 = prompt("1. Gib eine Nummer ein: ");
if $numberHUMAN1 == $numberPC {
    say "You won";
    exit;
}
else {
    #2. Versuch
    if $numberHUMAN1 > $numberPC { 
        say "too high";
    }
    else {
        say "too low";
    }
    say "Try again";
    my $numberHUMAN2 = prompt("2. Gib eine Nummer ein: ");
    if $numberHUMAN2 == $numberPC {
        say "You won";
        exit;
    }
    else {
        #3. Versuch
        if $numberHUMAN2 > $numberPC { 
            say "too high";
        }
        else {
            say "too low";
        }
        say "Try again";
        my $numberHUMAN3 = prompt("3. Gib eine Nummer ein: ");
        if $numberHUMAN3 == $numberPC {
            say "You won";
            exit;
        }
        else {
            #4. Versuch
            if $numberHUMAN3 > $numberPC { 
                say "too high";
            }
            else {
                say "too low";
            }
            say "Try again";
            my $numberHUMAN4 = prompt("4. Gib eine Nummer ein: ");            
            if $numberHUMAN4 == $numberPC {
                say "You won";
                exit;
            }
            else {
                #5. Versuch
                if $numberHUMAN4 > $numberPC { 
                    say "too high";
                }
                else {
                    say "too low";
                }
                say "Try again";
                my $numberHUMAN5 = prompt("5. Gib eine Nummer ein: ");                
                if $numberHUMAN5 == $numberPC {
                    say "You won";
                    exit;
                }
                else {
                    #6. Versuch
                    if $numberHUMAN5 > $numberPC { 
                        say "too high";
                    }
                    else {
                        say "too low";
                    }
                    say "Try again";
                    my $numberHUMAN6 = prompt("6. Gib eine Nummer ein: ");                    
                    if $numberHUMAN6 == $numberPC {
                        say "You won";
                        exit;
                    }
                    else {
                        #7. Versuch
                        if $numberHUMAN6 > $numberPC { 
                            say "too high";
                        }
                        else {
                            say "too low";
                        }
                        say "Try again";
                        my $numberHUMAN7 = prompt("7. Gib eine Nummer ein: ");
                        if $numberHUMAN7 == $numberPC {
                            say "You won";
                            exit;
                        }
                        else{
                            say "Youn suck!!!!!";
                        }
                    }
                }
            }
        }
    }
}
            
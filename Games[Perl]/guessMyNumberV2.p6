say "guess my number".uc;
my $numberPC = (1..100).pick;
my $numberHUMAN;

#say $numberPC; #Cheat

loop (my $i = 1; $i < 8; $i++) {
    say $i,". Versuch";
    my $numberHUMAN = prompt("Gib deine Schaetzung ab: ");
    if $numberPC == $numberHUMAN {
        say "Super du hast gewonnen!".uc;
        exit;
    }
    else{
        if $numberHUMAN > $numberPC {
            say "Deine Zahl ist zu gross!";
        }
        elsif $numberHUMAN < $numberPC {
            say "Deine Zahl ist zu niedrig!";
        }
    }    
}
say "You Suck!".uc; 
say "Die gesuchte Zahl waere ",$numberPC," gewesen!";

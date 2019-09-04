say 1, 2, 4 ... 256;
say 1.WHAT; #(Int)
say 0.25.WHAT; #(Rat)
say 1.23e4.WHAT; #(Num)

say 35 + 7; # 42
say 1.2 - 0.3; # 0.9
say 2.1e5 * 3.3e2; # 69300000
say 168 / 4; # 42
say 169 % 4; # 1
say 3 ** 3; # 27

say (4 / 2).WHAT;
say 'in Perl ', 0.1 + 0.2;
say 'in Python ', 0.30000000000000004;
say 0.1 + 0.2 == 0.3;
say ’Gangnam style!’;
say "Much wow!";
say "s" ~ "laughter"; # slaughter

#common operations on strings:

say chars("nyanCat"); # Anzahl der Buchstaben
say uc("nyanCat"); # Upper Case
say lc("nyanCat"); # Lower Case
say tclc("nyancat"); # Erste Buchstabe groß geschrieben

#method forms:

say "dogeCoin".chars; # 8
say "dogeCoin".uc; # DOGECOIN
say "dogeCoin".lc; # dogecoin
say "dogeCoin".tclc; # Dogecoin

say False.WHAT; # (Bool)
say True.WHAT; # (Bool)

say (~4.2).WHAT; # Str
say (+"42").WHAT; # Int

say '?0 ',?0; # False
say '!0 ',!0; # True
say 'so 0 ',so 0; # False (lower precedence form of ?)
say 'not 0 ',not 0; # True (lower precedence form of !)

say ?'', ?'0', ?'False';
say (+"42").WHAT,(+"1.5").WHAT,(+"4.2e4").WHAT;

#Scalars
my $answer = 42;
say  $answer.WHAT; 

#Assignment vs. binding
$answer = 2;
say $answer;
$answer = $answer + 19;
say $answer;
$answer *= 2;
say $answer;

#my $can't-assign-this := "hammer";
#$can't-assign-this = 'nope, no way';
#say $can't-assign-this;

my $answer = 42;
say $answer.VAR.WHAT; # (Scalar)
my $can't-assign-this := 24;
say $can't-assign-this.VAR.WHAT; # (Int)
say $can't-assign-this;

my $a = 42;     # a ist 42
say $a;
my $b := $a;    # innerhalb a ist b
$b = 100;       # b ist 100
say $a;         # a ist 100

#Arrays
my @countries = 'UK', 'Slovakia', 'Spain', 'Sweden';
say @countries.WHAT;
say @countries.elems;

#Array indexing
say @countries[0];
@countries[4] ='Czech Republic';
say @countries.elems;
say @countries;
@countries[4] ='Germany';
say @countries;
say @countries[0, 1, 2]; # UK Spain Slovakia
say @countries[0..2]; # (the same)
say @countries[^3];

my $first := @countries[0];
$first = ’England’;
say @countries[0];
say @countries;
#@values[$idx]++;

my @values;
@values.push(35);
say @values;
@values.push(7);
say @values;
@values.push(@values.pop + @values.pop);
say @values;

my @values[0,3] = '10','20';
say @values;
say @values[0,3].elems;
say @values[1,2];
say @values[1,2].WHAT;

say @values;
say @countries.VAR.WHAT;

#Hashes
my %capitals = UK => "London", Slovakia => "Bratislava";
say %capitals.WHAT; #hash
say %capitals.elems;
say %capitals;
say %capitals{"UK", "Slovakia"};
say %capitals<UK Slovakia>;

#Existence and deletion
say %capitals<UK>:exists;
say %capitals<Elbonia>:exists;
%capitals<England> = %capitals<UK>;
say %capitals;
%capitals<Scotland> = "Edinburgh";
say %capitals;
%capitals<UK>:delete;
say %capitals;
say %capitals.kv.WHAT, %capitals;
say %capitals[0,1].WHAT;

my $a = 'Slovakia';
say '{$a} ',%capitals{$a};
say '<$a> ',%capitals<$a>;

my %capitals2 = USA => "Washington";
say %capitals2;

%capitals.push(%capitals2); #add / Hinzufügen eines weiteren Hashs
say %capitals;

say @countries.WHAT;
@countries.push(%capitals);
say "Hash to Array ", @countries;

say %capitals2.WHAT;
%capitals2.push(@countries);
say "Array to Hash ", %capitals2;

say "keys ",@countries.keys;
say "values ",@countries.values;
say "kv ",@countries.kv;

#Interpolation basics

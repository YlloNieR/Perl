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

##Scalars
my $answer = 42;
say  $answer.WHAT; 

##Assignment vs. binding
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

##Arrays
my @countries = 'UK', 'Slovakia', 'Spain', 'Sweden';
say @countries.WHAT;
say @countries.elems;

##Array indexing
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

##Hashes
my %capitals = UK => "London", Slovakia => "Bratislava";
say %capitals.WHAT; #hash
say %capitals.elems;
say %capitals;
say %capitals{"UK", "Slovakia"};
say %capitals<UK Slovakia>;

##Existence and deletion
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

##Interpolation basics
my $who = 'your mom';
say '$who ate the pie'; 
say "$who ate the pie"; 

##Interpolation of arrays and hashes
say "Contact me@hotmail.com";

my @winners = <David Ed Nicola>;    #Array
say "The winner is @winners[0]";
say "Top 3 were @winners[]";        #zen slice = empty index

##Interpolating method calls
say "Top 3 are: @winners.join(',')";
say "CONGRATULATIONS @winners[0].uc()!";
say @winners.WHAT;
say "CONGRATULATIONS {4-3}. @winners[0].uc()!";

say "<b><$who></b>";

say "it again";
note "Uh-oh...";

#my $color = prompt "Name a color: "; #input something
#say $color;

##Working with files
my $whole-file-open = open "asd.txt";
say $whole-file-open;

my $whole-file-slurp = slurp "asd.txt"; #reads whole file
say $whole-file-slurp;
say $whole-file-slurp.WHAT;

my @lines = $whole-file-open.IO.lines;
say @lines;
say @lines.WHAT;

spurt 'asd.txt', 'some text'; #replaced text in textfile by 'some text'
say slurp "asd.txt"; #reads txt file and makes it to output

##Flow control
##ComparisonsNumeric String
"Equal == eq
Not equal != ne
Less than < lt
Less than or equal <= le
Greater than > gt
Greater than or equal >= ge";

say 'edam'.flip;
say (1,2,3).reverse;
say 'omg' x 2;
say 'omg' xx 2;

##if/elsif/else
#my $num = prompt "Test of defined VAR and prompt = Enter a number: ";
#if $num < 0 {
#    say "Negative";
#}
#elsif $num > 0 {
#    say "Positive";
#}
#else{
#    say "Zero";
#}

##given/when
#given prompt "Test of given and prompt = Enter a number: " {
#    when * < 0 {
#       say "Negative";
#    }
#    when * > 0 {
#        say "Positive";
#    }
#    default {
#        say "Zero";
#    }
#}

##Loops: loop
#loop {
#    say "Fill all the screen: challenge accepted!";    
#}
loop (my $i = 10; $i > 0; $i--) {
    say $i;
}
say "Lift off!".uc; 

##Loops: while / until
#my @tasks;
#while @tasks.elems < 2 {
#    @tasks.push(prompt("Enter a tasks: "))
#7}

#say @tasks;

#my @task;
#until @task.elems == 2 {
#    @task.push(prompt("Enter a task: "))
#}

#say @task;

##Loops: while/until with pointy blocks
#my @tasks; 
#while prompt("Enter a task (blank if done): ") -> $t {
#    @tasks.push($t);
#}
#my @copyToFile = open "asd.txt";
#spurt @copyToFile, @tasks;                          #input and copy to file
#say slurp @copyToFile;

#my @taskss;
#if prompt("Enter file to write tasks (optional): ") -> $name {
#    @taskss.push($name)
#}

##Iteration
my %capitals = Austria => 'Wien', Poland => 'Warsaw';
for %capitals.kv -> $country, $city {
    say "$city is the capital of $country";
}

my @dancers = <Jane Jill Jonny Jimmy Jenny Jack>;
for @dancers.pick(*) -> $first, $second {
    say "$first dances with $second";
}

my %dict := bag 'asd2.txt'.IO.words;
say "Meist benutzte Woerter: ", %dict.sort(-*.value).head: 5;

##Subs and signatures
my $greeter = -> $greeting, $name { say "$greeting, $name!" };
$greeter('Hej','Carl');

my $text;

##declare sub routine
sub my-func { say "Look ma, no args!" }
my-func;

sub if($cond, $code) { if $cond { $code() } }
if(True, -> { say "Wow, a sub called 'if'!" });

say substr "craft", 1;

#Returning results
sub truncate($text) {
    return $text.chars > 100
        ?? "$text.substr(0, 10)..."
        !! $text
}


#Passing arrays and hashes

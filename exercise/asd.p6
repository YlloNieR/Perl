my @array = slurp "ch7.bin", enc => "latin1";
my @values = 1,2,3;

say "array";
for @array {.say}
say "values";
for @values {.say}

@array.append: @values;      # will slip the array as it's the only parameter
@array.append: @values,17;   # does not slip @values
@array.append: |@values, 17; # will slip the @values into @array

say "array";
for @array {.say}
say "values";
for @values {.say}
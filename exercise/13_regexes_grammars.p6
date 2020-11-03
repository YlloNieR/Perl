$JSON-string

grammar JSON-Grammar {
    token TOP { \s* [ <object> | <array> ] \s* }
    rule object { '{' \s* <pairlist> '}' \s*}
    rule pairlist { <pair> * % \, }
    rule pair { <string>':' <value> }
    rule array {'[' <valuelist> ']'}
    rule valueList { <value> * % \, }
    token string { \" <[ \w \s \- ' ]>+ \" }
    token number { 
        [\+|\-]?
        [ \d+ [ \. \d+ ]? ]
        | [ \. \d+ ]
        [ <[eE]> [\+|\-]? \d+ ]?
    }
    token value { <object> | <array> | <string> | <number>
                | true  | false | null
    }
}


my $match = JSON-Grammar.parse($JSON-string);
say ~$match if $match;
%{
#include <stdio.h>
%}

%%

[[:alpha:]_][[:alnum:]_]* {
    printf("Valid Identifier: %s\n", yytext);
}

.|\n {}

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}

%{
#include<stdio.h>
%}

%%
[0-9]+ {
    printf("\nInteger are: %s\n", yytext);
}
[0-9]+"."[0-9]+ {
    printf("Float are: %s\n", yytext);
}
%%

int yywrap(){
    return 1;
}

int main() {
    yylex();
}

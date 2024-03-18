%{
#include<stdio.h>

int tchar = 0, tword = 0, tspace = 0;		
%}

%%

" " { tspace++; tword++; }				
[\t\n] { tword++; }						
[^\t\n] { tchar++; }

%%

int yywrap() {
    return 1;
}

int main() {
    yyin = fopen("fifth.txt", "r");

    yylex();
    printf("Number of characters: %d\nNumber of words: %d\nNumber of spaces: %d\n", tchar, tword, tspace);
    return 0;
}

%{
#include<stdio.h>
%}

%%
\<[^>]*\> fprintf(yyout,"%s\n",yytext);
.|\n; 
%%

int yywrap()
{
return 1;
}

int main()
{
yyin=fopen("input8.html","r");
yyout=fopen("output8.txt","w");
yylex();
return 0;
}

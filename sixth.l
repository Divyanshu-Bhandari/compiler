%{
#include<stdio.h>
%}

%%
[\t" "]+ fprintf(yyout," ");		

.|\n fprintf(yyout,"%s",yytext);	
%%

int yywrap()
{
return 1;
}

int main(void)
{
yyin=fopen("fifth.txt","r");		
yyout=fopen("output.txt","w");
yylex();
return 0;
}

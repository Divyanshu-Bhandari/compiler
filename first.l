%{
    int line_count = 0;
    int space_count = 0;
    int tab_count = 0;
    int other_count = 0;
%}

%%
\n      { line_count++; }
[ ]     { space_count++; }
\t      { tab_count++; }
.       { other_count++; }
%%

int main() {
    yylex();
    
    printf("Lines: %d\n", line_count);
    printf("Spaces: %d\n", space_count);
    printf("Tabs: %d\n", tab_count);
    printf("Other characters: %d\n", other_count);

    return 0;
}

int yywrap(){
    return 1;
}

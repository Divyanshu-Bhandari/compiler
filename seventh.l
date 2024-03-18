%{ 
%}
  
start \/\* 

end  \*\/ 
  
%% 
  

\/\/(.*) ; 

{start}.*{end} ; 
  
%% 
  
int yywrap() {
return 1;
}

int main(int k,char **argcv) 
{ 
yyin=fopen(argcv[1],"r"); 
yyout=fopen("output.c","w"); 

yylex(); 
return 0; 
} 

%{
#include"ass2.tab.h"
%}
%%
[a-zA-Z]+ {return ID;}
[0-9]+ {return NUMBER;}
[+\-*/%$=();] {return *yytext;}
%%
int yywrap(void){
return 1;
}

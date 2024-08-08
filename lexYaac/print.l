%{
#include"print.tab.h"
%}
%%
"printf" {return P;}
[\"] {return QUO;}
[\(\)] {return BR;}
[;] {return SEMI;}
[,] {return *yytext;}
[ \n\t] {}
[a-zA-Z_% ]+ {return ALL;}
%%
int yywrap(void){
return 1;
}

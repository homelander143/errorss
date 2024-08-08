%{
#include"scan.tab.h"
%}
%%
"scanf" {return S;}
[dfsc] {return AS;}
[\"] {return QUO;}
[\(\)] {return BR;}
[;] {return SEMI;}
[,] {return *yytext;}
[&] {return AND;}
[%] {return PER;}
[ \n\t] {}
[a-zA-Z_]+ {return ALL;}
%%
int yywrap(void){
return 1;
}

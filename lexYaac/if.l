%{
#include"if.tab.h"
%}
%%
"if" {return IF;}
"else" {return ELSE;}
[\(] {return LBR;}
[\)] {return RBR;}
[\{] {return LF;}
[\}] {return RF;}
[;] {return SEMI;}
"||" {return OR;}
"&&" {return AND;}
[<>=][=]* {return OPE;}
[ \n\t] {}
[a-zA-Z_]+ {return ALL;}
%%
int yywrap(void){
return 1;
}

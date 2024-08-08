%{
#include"for.tab.h"
%}
%%
"for" {return FOR;}
[\(] {return LBR;}
[\)] {return RBR;}
[\{] {return LF;}
[\}] {return RF;}
[;] {return SEMI;}
"||" {return OR;}
"&&" {return AND;}
"++" {return INCR;}
[<>=][=]* {return OPE;}
[ \n\t] {}
[a-zA-Z_0-9]+ {return ALL;}
%%
int yywrap(void){
return 1;
}

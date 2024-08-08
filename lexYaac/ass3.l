%{
#include "ass3.tab.h"
%}
%%
[0-9]* {return num;}
(int)|(float)|(long)|(double)|(char) {return datatype;}
[_a-zA-Z]+[a-zA-Z_0-9]* {return var;}
[+\-*/%$=();\[\],] {return *yytext;}
%%
int yywrap(void){
return 1;
}

%{
#include"ass4.tab.h"
%}
%%
a {return A;}
b {return B;}
[^a]* {return all;}
%%
int yywrap(void){
return 1;
}

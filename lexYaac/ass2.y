%{
#include <stdio.h>
%}
%token ID NUMBER
%%
aexp:ID'='exp';' {printf("\nThe given expression is valid\n");}
    |exp
    ;
exp:exp'+'term 
   |exp'-'term
   |term
   ;
term:term'*'fact 
    |term'/'fact
    |fact
    ;
fact:'('exp')'
    |NUMBER
    |ID
    ;
%%
int main(){
printf("Enter a valid expression\n");
yyparse();
return 0;
}
void yyerror(char *s){
printf("Invalid expression %s\n",s);
}

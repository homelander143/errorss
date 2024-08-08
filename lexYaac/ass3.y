%{
#include<stdio.h>
int n=0;
void yyerror(char *s);
int yylex(void);
%}
%token var datatype num
%%
exp:datatype evar';'
   |evar
   ;
evar:evar','rvar 
    |rvar 
   ;
rvar:var'['num']'
    |var'*'
    |'*'var
    |var'='num
    |var
    ;
%%
int main(){
printf("Enter c declaration statement\n");
yyparse();
if(n==0){
printf("\nValid declaration statement\n");
}
return 0;
}
void yyerror(char *s){
n=1;
printf("Invalid declaration statement %s\n",s);
}

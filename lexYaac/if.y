%{
#include<stdio.h>
void yyerror(char *s);
int yylex(void);
int n=0;
%}
%token IF ELSE LBR RBR OPE AND OR LF RF ALL SEMI
%%
exp:IF LBR cond RBR LF statements RF
   |IF LBR cond RBR LF statements RF ELSE LF statements RF
   ;
cond:ALL OPE ALL OR cond
    |ALL OPE ALL AND cond
    |ALL OPE ALL
    ;
statements:ALL SEMI
          |ALL SEMI statements
          ;
%%
int main(){
printf("Enter the if statement\n");
yyparse();
if(n==1){
printf("Wrong input\n");
}else printf("Valid input\n");
return 0;
}
void yyerror(char *s){
n=1;
printf("\nInvalid string\n");
}

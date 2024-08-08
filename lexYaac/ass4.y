%{
#include<stdio.h>
%}
%token A B all
%%
exp:str {printf("\nValid string\n");}
   |str all {printf("\nInvalid 1 String\n");}
   ;
str:A str
   |A A A A A A B
   ;
%%
int main(){
printf("Enter the string");
yyparse();
return 0;
}
void yyerror(char *s){
printf("\nInvalid string\n");
}

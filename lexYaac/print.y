%{
#include<stdio.h>
void yyerror(char *s);
int yylex(void);
int n=0;
%}
%token P AS ALL QUO BR SEMI
%%
exp:P BR inp BR SEMI
   ;
inp:QUO ALL QUO dec
   |QUO ALL QUO
   ;
dec:dec','ALL
   |','ALL
   ;
%%
int main(){
printf("Enter the printf statement\n");
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

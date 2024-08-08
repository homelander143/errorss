%{
#include<stdio.h>
void yyerror(char *s);
int yylex(void);
int n=0;
%}
%token S AS ALL QUO BR SEMI AND PER
%%
exp:S BR inp BR SEMI
   ;
inp:QUO alld QUO dec
   ;
alld:PER AS
    |PER AS alld
    ;
dec:','ALL dec
   |','ALL
   |','AND ALL
   |','AND ALL dec
   ;
%%
int main(){
printf("Enter the scanf statement\n");
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

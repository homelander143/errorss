%{
#include <stdio.h>
void yyerror(char *s);
int yylex(void);
int n = 0;
%}

%token DO WHILE LBR RBR OPE AND OR LF RF ALL SEMI
%%
exp: DO LF statements RF WHILE LBR cond RBR SEMI
   ;

cond: ALL OPE ALL OR
    | ALL OPE ALL AND
    | ALL OPE ALL
    ;

statements: ALL SEMI
          | ALL SEMI statements
          ;
%%
int main() {
    printf("Enter the do-while loop statement\n");
    yyparse();
    if (n == 1) {
        printf("\nWrong input\n");
    } else {
        printf("\nValid input\n");
    }
    return 0;
}

void yyerror(char *s) {
    n = 1;
    
}


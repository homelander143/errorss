%{
#include <stdio.h>
void yyerror(char *s);
int yylex(void);
int n = 0;
%}

%token WHILE LBR RBR OPE AND OR LF RF ALL SEMI
%%
exp: WHILE LBR cond RBR LF statements RF
   ;

cond: ALL OPE ALL OR cond
    | ALL OPE ALL AND cond
    | ALL OPE ALL
    ;

statements: ALL SEMI
          | ALL SEMI statements
          ;
%%
int main() {
    printf("Enter the while loop statement\n");
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


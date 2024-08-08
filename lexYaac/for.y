%{
#include <stdio.h>
void yyerror(char *s);
int yylex(void);
int n = 0;
%}

%token FOR LBR RBR OPE AND OR SEMI COMMA LF RF ALL INCR
%%
exp: FOR LBR cond SEMI cond SEMI cond RBR LF statements RF
   ;

cond: ALL OPE ALL OR
    | ALL OPE ALL AND
    | ALL OPE ALL
    | ALL INCR
    ;
statements: ALL SEMI
          | ALL SEMI statements
          ;
%%
int main() {
    printf("Enter the for loop statement\n");
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


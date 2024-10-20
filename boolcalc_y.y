%{
#include <stdio.h>
#include <stdbool.h>
int yylex (void);
extern int yyparse();
extern FILE* yyin;
void yyerror (char const *s);
%}



%token NEWLINE
%token BOOL
%token '!'
%token '&'
%token '|'

%start input

%%

input:
%empty
| input line
;

line:
 NEWLINE
| exp NEWLINE {if ($1){printf("TRUE\n");}
else {printf("FALSE\n");}}
| error NEWLINE  {yyerrok;}
;

exp: 
BOOL
| exp exp '&' {$$ = $1 && $2;}
| exp exp '|' {$$ = $1 || $2;}
| exp '!' {$$ = !($1);}
;

%%


void yyerror (char const *s){
fprintf(stderr, "%s\n", s);}


int main(void){
yyin = stdin;
do {yyparse();}
while (!feof(yyin));
return 0;}

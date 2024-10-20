%{
#include <stdio.h>
#include <stdbool.h>
#include "boolcalc.tab.h"
%}
%option noyywrap


%%

[ \t]   ;
[a-zA-Z]+|[0-1]+        {yylval = (*yytext == '1' || *yytext == 't' || *yytext == 'T'); return BOOL;}
\&                      {return '&';}
\|                      {return '|';}
\!                      {return '!';}
\n                      {return NEWLINE;}

%%


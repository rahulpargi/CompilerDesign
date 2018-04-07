/*Definition*/
%{
/* a lex program that adds line numbers to lines */

#include<stdio.h>
int lineno=1;
%}
line .*\n
%option  noyywrap
%%

/*Rules */
{line} printf("%5d %s",lineno++,yytext ); 

%%

/*Utility function*/
int main(){yylex(); return 0;}

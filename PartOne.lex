

%{
#include<stdio.h>
int lines=0, words=0,charc=0;
%}
%option noyywrap
%%
[\n] { lines++; words++;}
[charc0-9^" "] words++;
[a-zA-Z] charc++;

%%
int main(void)
{
yyin= fopen("lex1.txt","r");
yylex();
printf(" This File contains ...");
printf("\n\t%d characters", charc);
printf("\n\t%d words",words);
printf("\n\t%d lines", lines);
return 0;
}
 

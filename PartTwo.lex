
%option noyywrap
%{
#include <stdio.h>
#include <stdlib.h>
int charc = 0, word = 0, lines = 0; 
%}

character [a-zA-Z]
digit [0-9]
word ({character}|{digit})+
line \n


%%

{line} { charc++; lines++; }
{word} { word++; charc += strlen(yytext); }
{character} { charc++; }
\/\/.* ;
\/\*(.*\n)*.*\*\/ ;

%%

int main(int argc,char *argv[])
{
    yyin= fopen(argv[1],"r");
    yylex();
    printf("Number of characters: %d\n ", charc);
    printf("Number of words:      %d\n ", word);
    printf("Number of lines:      %d\n", lines);
    return 0;
}

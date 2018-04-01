%option noyywrap
%{

	#include<stdio.h>
%}

%%

[A-Z] putchar(tolower(yytext[0]));
"/*"	{
	char c;
	int done=0;
	ECHO;
	do{
		while((c=input())!='*')
			putchar(c);
		putchar(c);
		while((c=input())=='*')
			putchar(c);
		putchar(c);
		if(c=='/') done=1;

	}while(!done);
}
%%
int main()
{
	yylex();
	return 0;
}
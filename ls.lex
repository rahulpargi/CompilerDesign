%option noyywrap
%{
/*Selects the only lines that end or begin with a Deletes Everything else*/

	#include<stdio.h>
%}
end_with_a .*a\n
begins_with_a	a.*\n;
%%

{end_with_a} ECHO;
{begins_with_a} ECHO;

%%
int main()
{
	yylex();
	return 0;
}
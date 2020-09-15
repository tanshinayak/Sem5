%option noyywrap
%{
	#include<stdio.h>
	#include<string.h>
	int n=0;
	char *w;
%}
%%
[A-Za-z]+ {
	if(yyleng>n)
	{
		n=yyleng;
		w=strdup(yytext);
	}
 }
.
\n
<<EOF>>  {return 1;}
%%
int main()
{
	yyin=fopen("a.txt","r");
	yylex();
	printf("Length of largest word: %d  ",n);
	printf("Word: %s",w);
	return 1;
}
%option noyywrap
%{
#include<stdio.h>
%}

%%

[\t" "]+ fprintf(yyout," ");		

.|\n fprintf(yyout,"%s",yytext);	
%%

int main(void)
{
yyin=fopen("inputf.txt","r");		
yyout=fopen("outputf.txt","w");

yylex();
return 0;
}
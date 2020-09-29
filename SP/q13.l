%option noyywrap
%{ #include<stdio.h>
%}

%%
[A-Za-z]+ {int length=yyleng;
	   int i=length;
	   printf("\n");
	   while(i>=0) 
	   {
	     int j=0;
	     while(j<i) 
	     {
		printf("%c",yytext[j]);
		j++;
	     } 
	     printf("\n");
	     i--;
	   }
	  } 
%%
int main()
{
printf("Enter string : ");
yylex();
}
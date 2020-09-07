%option noyywrap
%{
   int i;
%}
%%
[a-zA-Z]+ {
 for(i=0;i<yyleng;i++)
  {
   if(yytext[i]=='x'||yytext[i]=='y'||yytext[i]=='z'||yytext[i]=='X'||yytext[i]=='Y'||yytext[i]=='Z')
     printf("%c",yytext[i]-23);
   else if(yytext[i]==(int)(' '))
     printf("%c",yytext[i]);
    else
     printf("%c",yytext[i]+3);
   }
}

%%
int main()
{ 
    printf("enter input : ");
  yylex();
 
 return 0;
}
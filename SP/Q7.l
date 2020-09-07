%{ #include<studio.h>
int n_char=0;
int n_lines=0;
#undef yywrap
#define yywrap() 1
%}

%%
\n ++n_lines;
. ++n_char;

%%

int main()
{
 yyin=fopen("q7.txt", "r"); 
 yylex();
 printf("n# of characters: %d",n_char);
 printf("\n");
 printf("n# of lines: %d",n_lines);
 printf("\n");
fclose(yyin); 
 return 0;
}
 
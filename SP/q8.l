%option noyywrap

%{
    #include<stdio.h>
    char str[10];
    int i=0;
%}

%%
[a-wA-W] {str[i]=(int)str[i]+3;i++;}
[x-zX-Z] {str[i]=(int)str[i]-23; i++;}
%%

int main()
{
    printf("Input base string : ");
    scanf("%s",str);
    yy_scan_string(str);
    yylex();
    printf("Encoded string: %s", str);
    return 0;
}
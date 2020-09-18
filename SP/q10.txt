%option noyywrap
%{  
int n = 0 ;   
%}  

%%
"include<iostream>" {printf("\t header file : %s\n", yytext);}

"using namespace std" {printf("\t header file : %s\n", yytext);}
  
"while"|"if"|"else"|"cin"|"cout"|"return"|"main"|"break"|"char"|"continue"|"class"|"switch" {printf("\t keywords : %s\n", yytext);}   

"int"|"float" {printf("\t keywords : %s\n", yytext);}    
 
[a-zA-Z_][a-zA-Z0-9_]* {printf("\t identifier : %s\n", yytext);}  
  
["][^"]+["] {printf("\t String literal : %s\n", yytext);}  

"<="|"=="|"="|"++"|"-"|"*"|"+"|"<"|">" {printf("\t operator : %s\n", yytext);}  
   
[0-9]*"."[0-9]+ {printf("\t float : %s\n", yytext);}   
   
[0-9]+ {printf("\t integer : %s\n", yytext);}  

[(){},;] {printf("\t separator : %s\n", yytext);}          
 
"//".+ {printf("\tSingle Line Comment:%s\n",yytext);}

"/*"([^*]|(\*[^/]))*"*"+"/" {printf("\tMulti Line Comment:%s\n",yytext);}
.    ; 
%%  
   
   
int main()  
  
{  
     yyin=fopen("qq10cpp.text","r"); 
    yylex(); 
      
   return 0;
       
}  
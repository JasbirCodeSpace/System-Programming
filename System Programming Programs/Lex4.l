%{
	#include<stdlib.h>
	#include<stdio.h>
    
%}

%%
(void|int|float|double|string|return|bool|char|for|if|do|while|exit"("[0-9]+")"|case|break|continue|switch|enum|struct|"size of")  { printf("\n%s -> ",yytext);
              						 printf("%s\n","Keyword");}

[0-9]+ {printf("\n%s -> ",yytext);
        printf("%s\n","Integer");}
[0-9]*(.)[0-9]+('f'|'d'){1} {printf("\n%s -> ",yytext);
                 printf("%s\n","Float");}
[_a-zA-Z]+[_a-zA-Z0-9]* { printf("\n%s -> ",yytext);
                          printf("%s\n","Identifier");}


[+*/&<>|()-=] { printf("\n%s -> ",yytext);
               printf("%s\n","Operator");}

"//".* {printf("\n%s -> ",yytext);
               printf("%s\n","Single Line Comment");}

"/*".*"*/" {printf("\n%s -> ",yytext);
               printf("%s\n","Multi Line Comment");}               

\t ;
\n ;
" ";

. {      printf("\n%s -> ",yytext);
         printf("%s\n","Special Character");}
%%

int main(){
	yylex();
	return 0;
}

yywrap(){}
yyerror(){}
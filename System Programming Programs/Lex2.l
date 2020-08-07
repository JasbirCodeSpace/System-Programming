%{
	#include<stdio.h>
	#include<stdlib.h>
	

%}

%%
[a-z] {
	      char ch = yytext[0];
	      ch += 3;

	      if(ch > 'z')
	      ch -= ('z'+1 - 'a');

          printf("%c",ch);
	      yytext[0] = ch;

       }

[A-Z] {
	      char ch = yytext[0];
	      ch += 3;

	      if(ch > 'Z')
	      ch -= ('Z'+1 - 'A');

          printf("%c",ch);
	      yytext[0] = ch;

       }       
%%

int main(){
	
	yyin = fopen("input.txt","r");

	yylex();

	return 0;
}

yywrap(){}
yyerror(){}
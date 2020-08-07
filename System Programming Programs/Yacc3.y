%{
	
	#include<stdio.h>
	#include<stdlib.h>
	#include "y.tab.h"
%}

%token A B NL

%%
expr : S NL{printf("\nValid String\n");
            return 0;}
S : A S B
  |;

%%

int main(){
	printf("\nEnter the string :: ");
	yyparse();
	return 0;
}

yywrap(){}
yyerror(){
	printf("\nInvalid String");
}
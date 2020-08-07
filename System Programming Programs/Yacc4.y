%{
	#include<stdio.h>
	#include<stdlib.h>
	#include "y.tab.h"

%}

%token A B NL

%%
S : A A A A A A A A A A S1 B NL
    { printf("\nValid String \n");
      return 0;} 

S1 : A S1
    |;

%%

main(){
	
	printf("\nEnter a String :: ");
	yyparse();

} 

yywrap(){}

yyerror(){
	printf("\nInvalid String\n");
	return 0;
}
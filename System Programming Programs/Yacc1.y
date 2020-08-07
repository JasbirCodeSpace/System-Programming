%{
	#include<stdio.h>
	#include<stdlib.h>

	#include "y.tab.h"
%}

%token NUM VAR NL

%%

S : S1 NL{printf("\nValid Expression\n");return 0;}

S1 :  S1 '+' S1|S1 '-' S1|S1 '/' S1|S1 '*' S1| '(' S1 ')' | VAR | NUM |;



%%

int main(){
	printf("\nEnter an Expression :: ");
	yyparse();
    return 0;
}

int yywrap(){}

int yyerror(){
	printf("\nInvalid Expression\n");
	exit(1);
}
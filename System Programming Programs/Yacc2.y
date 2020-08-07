%{
	
	#include<stdio.h>
	#include<stdlib.h>
	#include "y.tab.h"

%}

%token NUM
%left '+' '-'
%left '/' '*'
%left '(' ')'

%%
expr:e{printf("Result is :: %d\n",$$);
       return 0;}

e:e '+' e{$$ = $1+$3;}
 |e '-' e{$$ = $1-$3;}
 |e '*' e{$$ = $1*$3;}
 |e '/' e{

  if($3==0){
  printf("\nDivision By Zero\n");
  printf("Result is :: Undefined");
  return 0;

  }
  else
  $$ = $1/$3;}

 |'(' e ')'{$$ = $2;}
 |NUM {$$ = $1;}

%%

int main(){
    printf("\nEnter the arithmetic expression ::");

	yyparse();
	printf("\nValid Expression\n");

	return 0;

}

int yywrap(){
	return 0;
}

int yyerror(){
	printf("\nInvalid Expression\n");
	exit(1);
}

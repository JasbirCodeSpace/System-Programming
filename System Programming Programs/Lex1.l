%{
	#include<stdio.h>
	#include<strings.h>
	#include<stdlib.h>
    int yyflex();
	int lines=0,words=0,Characters=0,blank=0;
%}

%%
[\n] {lines++;}

[^ \t\n] {Characters++;}
%%

int main(){
	yyin = fopen("input.txt","r");

	yylex();
   

    printf("\n\t=============== This file contains ==============\n");
    printf("\tTotal %d Lines\n",lines);
    printf("\tTotal %d Characters \n",Characters);
    

   

return 0;
}	
 
 yywrap(){}

yyerror(){
printf("\nError\n");
exit(0);
}

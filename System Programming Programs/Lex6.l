%{
	#include<stdio.h>
	#include<strings.h>
	#include<stdlib.h>
    int yyflex();
	int lines=0,words=0,Characters=0,blank=0;
%}

%%
[^ \t\n]+ {words++;
          Characters+=yyleng;}
[\n] {lines++;}

" " blank++;
\t  blank+=5;
%%

int main(){
	yyin = fopen("input.txt","r");

	yylex();
   

    printf("\n\t=============== This file contains ==============\n");
    printf("\tTotal %d Lines\n",lines);
    printf("\tTotal %d words\n",words);
    printf("\tTotal %d Characters \n",Characters);
    printf("\tTotal %d Blanks \n",blank);

   

return 0;
}	
 
 yywrap(){}

yyerror(){
printf("\nError\n");
exit(0);
}

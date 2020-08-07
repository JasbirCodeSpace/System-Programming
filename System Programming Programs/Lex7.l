%{
	#include<stdio.h>
	#include<stdlib.h>


%}

%%
[a-zA-Z]*  {
	       for(int i=yyleng-1;i>=0;i--){
	       	 printf("\t\t");
              for(int j=0;j<=i;j++)
              	printf("%c\t",yytext[j]);
                 
              printf("\n");    
	       }
	       
        }

%%

int main(){
	yylex();

	return 0;
}

int yywrap(){
  return 0;
}

int yyerror(){
	printf("\n******* ERROR *******\n");
	exit(1);
}
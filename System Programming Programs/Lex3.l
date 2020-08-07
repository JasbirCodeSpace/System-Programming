%{
	#include<stdio.h>
	#include<stdlib.h>
    #include<string.h>
    int longest = 0;
    int x=0;
    char longWord[20][100];
    
%}
%%
[a-zA-Z]+  { 
	          if(yyleng > longest){
	          	memset(longWord, 0, sizeof longWord);
	          	x=0;
	          	longest = yyleng;
	          	
	          	strcpy(longWord[x],yytext);

	          }

	          else if(yyleng == longest){
	          	strcpy(longWord[++x],yytext);
	          }

			}
%%
int main(){

	yyin = fopen("input.txt","r");
	yylex();


    printf("Longest Length : %d\n",longest);
	printf("Longest word :\n");
	    for (int i = 0; i <=x; i++) {
           
            printf("%s\n", longWord[i]);
        }
       
	fclose(yyin);
	return 0;
}

yyerror(){}
yywrap(){}


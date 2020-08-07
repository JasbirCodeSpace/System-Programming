%{
	#include<stdlib.h>
 	#include<stdio.h>
 	int num=0;
%}

%%
"int" | 
"float" | 
"char" | 
"double" | 
"bool" {
	  char ch;
	  ch = input();

	  while(1){
	  	if(ch == ','){
	  		num++;
	  	}

	  	if(ch == ";"){
	  		num++;
	  		break;
	  	}

	  	if(ch == '\n')
	  	break;

	  	ch = input();
	  }
}

.|'\n' ;
%%

int main(int argc,char *argv[]){

	if(argc!=2){
		printf("\n\tYou didn't specify file in arguement\n");

		exit(0);
    }

	else{
       yyin = fopen(argv[1],"r");

       if(yyin){
          yylex();
          printf("\nNo. of Identifiers = %d\n",num);
       }

       else{
           printf("\n\tError while opening file\n");
       }
	}

	return 0;
	
}

yywrap(){}

yyerror(){}
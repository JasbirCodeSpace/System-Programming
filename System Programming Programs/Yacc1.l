%{
	#include<stdio.h>
	#include<stdlib.h>
	#include "y.tab.h"
%}


%%
[\t]+ ;

[0-9]+  { printf("\n %s is a valid number\n",yytext);
         return NUM;}

[a-z_]+[a-z_0-9]*  { printf("\n %s is a valid variable\n",yytext);
         return VAR;}

[+] {printf("\n %s is a valid operator\n",yytext);
            return '+';}
[-] {printf("\n %s is a valid operator\n",yytext);
            return '-';}

[/] {printf("\n %s is a valid operator\n",yytext);
            return '/';}
[*] {printf("\n %s is a valid operator\n",yytext);
            return '*';}                                    

\n {return NL;}

. {return yytext[0];}
%%
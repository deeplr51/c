%{ 
#include <ctype.h>
%}
%%
[a-z]  {putchar(toupper(yytext[0]));}
. {ECHO;}
%%

int main(){
yylex();
return 0;

}

%{
#include <stdio.h>
int bl_b = 0;
int am_b = 0;
%}

%%

[Bb][Ll]\.[eE][nN]\.[uU][4][Cc][Ss][Ee][12][0-4][0-9]{3} {
    printf("Valid Bangalore branch\n");
    bl_b++;
    
}

[aA][mM]\.[eE][nN]\.[uU][4][Cc][Ss][Ee][12][0-4][0-9]{3} {
    printf("Valid Amriatpuri branch\n");
    am_b++;}
    
.* {
    printf("Invalid\n");
    return 0;
}

%%

int yywrap() {return 1;}

int main() {
    yyin = fopen("reg.txt", "r");
    yyout=fopen("output.txt","w");
    while(yylex()!=0){};
    fprintf(yyout,"Total Bangalore branches: %d\n", bl_b);
    fprintf(yyout,"Total Amriatpuri branches: %d\n", am_b);
    fclose(yyin);
    fclose(yyout);
    return 0;
}


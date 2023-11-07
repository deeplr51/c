%{
#include <stdio.h>
int bl_b = 0;
int am_b = 0;
%}

%%

[Bb][Ll]\.[eE][nN]\.[uU][4][Cc][Ss][Ee][2][0-4][0-9]{3} {
    printf("Valid Bangalore branch\n");
    bl_b++;
}

[aA][mM]\.[eE][nN]\.[uU][4][Cc][Ss][Ee][2][0-4][0-9]{3} {
    printf("Valid Amriatpuri branch\n");
    am_b++;
}

[C-Zc-z0-9]* {
    printf("Invalid\n");
}

%%

int yywrap() {}

int main() {
    yyin = fopen("reg.txt", "r");

    while (yylex() != 0) {
        // Process each line
    }

    fclose(yyin);

    printf("Total Bangalore branches: %d\n", bl_b);
    printf("Total Amriatpuri branches: %d\n", am_b);

    return 0;
}


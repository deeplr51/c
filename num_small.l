%{
    int count_sm = 0;
    int count_nm = 0;
%}

%%

[a-z]+ {count_sm += strlen(yytext);}
[0-9]+ {count_nm += strlen(yytext);}

\n { return 0; }

%%

int yywrap() {
    return 1;
}

int main(void) {
    yylex();
    printf("the count of small letters and numbers is : %d %d\n", count_sm, count_nm);
    return 0;
}


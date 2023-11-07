%%
[A-Za-z0-9]+[._/#$%^&*]*@gmail.com {printf("valid");}
.* {printf("invalid");}
%%

int main(){
yylex();
return 0;
}

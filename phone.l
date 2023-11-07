%{
int valid_landline=0;
int valid_mobile=0;
int b=0;
int india=0;
int US=0;
%}

%%
[0][8][0][1-9]{8}  {b++;}
\+[9][1][7-9]{1}[0-9]{9} {valid_mobile++; india++;}
\+[1][7-9]{1}[0-9]{9} {valid_mobile++; US++;}
[0][1-9][0][1-9]{8} {valid_landline++;}


%%

int yywrap(){}


int main(){
yyin=fopen("file.txt","r");

while (yylex() != 0) {
        // Process each line as a phone number
}

printf("Valid Lanline %d \n",valid_landline);
printf("Valid Mobile %d \n",valid_mobile);
printf("Country: India=%d , US=%d \n",india,US);
printf("Area:Bangalore = %d \n",b);
return 0;
}

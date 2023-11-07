%{
int count=0;
%}

%%
[ ] {count++;}
. {}
\n {
if(count>0){
	count++;
}
return 0;
}
%%

int ywrap();

int main(){
yylex();
printf("Total number of words: %d\n", count);
return 0;

}

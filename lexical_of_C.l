
%{
	//#include "my_symbols.h"
    #include<time.h>
    #include<stdio.h>
    void gettime();
    void plssleep();
    void printcar();
    int num_of_lines=0;
    int num_of_spaces=0;
%}
%%
                
"#include"*           printf("including header file\t");
#.*                   printf("preprocessor directive\t"); 

"void"                printf("data type:void\t");
"int"                 printf("data type:int\t");
"float"               printf("data type:float\t");
"char"                printf("data type:char\t");
"struct"              printf("user defined data type\t");
"double"              printf("data type:double\t");

"main("               printf("main function\t");
"for\("               printf("keyword:a for loop\t");
"while\("             printf("keyword:a while loop\t");
"if\("                printf("keyword:if statement\t");                
"else if\("           printf("keyword:else if statement\t");
"else"                printf("keyword:else statement\t");

"switch"              printf("keyword:switch\t");

"return"              printf("keyword:return\t");

"break"               printf("keyword:break\t");

"continue"            printf("keyword:continue\t");

"const"               printf("keyword:const\t");

"case"                printf("keyword:case\t");

"goto"                printf("keyword:goto\t");

"car"                 printcar();

"sleep"               plssleep();

"time"                gettime();

"date"                gettime();

"end"                 return 0;

"exit"                return 0;

"get lines typed"     printf("%d\n",++num_of_lines);
" "                   ++num_of_spaces;

[a-zA-Z][a-zA-Z0-9]*\(  printf("function \t");

[a-zA-Z][a-zA-Z0-9]*\[[[0-9]*\]  printf("array identifier\t");

\*[a-zA-Z][a-zA-Z0-9]  printf("pointer declaration\t");
\{                     printf("block start\t");
\}                     printf("block end\t");

"//"*                  printf("single line comment\t");
"/*"*                  printf("multi line comment\t");

\+\+ |
\-\- |
\+ |
\- |
\/ |
\* |
\%                   printf("mathematical operator\t"); 

=                   printf("assignment operator\t");

"()?:"              printf("ternary operator\t");
\<= |
\>= |
\< |
== |
\>                    printf("is a comparison operator\t");

;                     printf("terminal:;\t");

["][a-zA-Z0-9" "]*["]    printf("A String\t");
[a-zA-Z][a-zA-Z0-9]*  printf("identifier\t");
[0-9]*                printf("integer\t");
[+-]?[0-9]*           printf("signed integer\t");
[+-.0-9][.0-9]*       printf("a floating point\t");
[\n]                  {printf("\n");++num_of_lines;}


.                     ;

%%

int yywrap(void)
{
	return 1;
}

void gettime(void)
{
  time_t rawtime;
  struct tm * timeinfo;

  time ( &rawtime );
  timeinfo = localtime ( &rawtime );
  printf ( "Current local time and date: %s", asctime (timeinfo) );
  
}

void printcar()
{
	printf("\n               ________________  ");
    printf("\n              /       ||       \\ ");
    printf("\n             /        ||        \\ ");
printf("\n ___________/_________||_________\\___________");
printf("\n(__)          ___     ||  ___            |____\\ ");  
printf("\n|__|   ___            ||              ___      \\ ");    
printf("\n|_____/   \\___________||_____________/   \\______\\ ");
printf("\n      \\___/                          \\___/     \n");

	     
}
void plssleep()
{printf("\nsleeping");
	for(int i=0;i<999;i++)
	{
	  for(int j=0;j<999;j++)
	  {}
	}
 printf("\nsleep over\n");
}
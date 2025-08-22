#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main(){
    char *s="\033c\033[43;30m\ncommand line cmd...\n";
    char sss[4096]="\0";
    char *ss=sss;
   
    printf("%s",s); 
    while (ss[0]!='\n'){
        ss=fgets(sss,4095,stdin);
        if(ss[0]=='\n'){
            break;
        }else{
            system(ss);
        }
    }

}

#include <stdlib.h>
#include <string.h>
#include <unistd.h>
char *pgets(int n){
    int nn=n;
    char c[4096]="\0";
    char *cc=c+0;
    int i=0;
    if (nn>4095)nn=4095;
    for (i=0;i<nn;i++){
        c[i+1]=0;
        cc=c+i;
        read(0,cc,1);
        write(1,cc,1);
        if(cc[0]=='\n')break;
    }
    cc=c+0;
    cc[nn]=0;
    return cc;
}

int main(){
    char *s="\033c\033[43;30m\ncommand line cmd...\n";
    char sss[10]="\0";
    char *ss=sss;
    int i=strlen(s);
    write(1,s,i);
    while (ss[0]!='\n'){
        ss=pgets(4095);
        if(ss[0]=='\n'){
            break;
        }else{
            system(ss);
        }
    }

}

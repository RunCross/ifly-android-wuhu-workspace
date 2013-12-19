#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <time.h>
#include <errno.h>
#include <signal.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/time.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include "com_runcross_painyaya_JNIHttpPost.h"

#define IPSTR "203.189.106.146"
#define PORT 8080
#define BUFSIZE 1024

JNIEXPORT jstring JNICALL Java_com_runcross_painyaya_JNIHttpPost_post(JNIEnv *e,jobject j)
{
        int sockfd, ret, i, h;
        struct sockaddr_in servaddr;
        char str1[8192], str2[29], buf[1024], *str,*temp;
        socklen_t len;
        fd_set   t_set1;
        struct timeval  tv;

        if ((sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0 ) {
        	return (*e)->NewStringUTF(e, "Fail -1");
                exit(0);
        };

        bzero(&servaddr, sizeof(servaddr));
        servaddr.sin_family = AF_INET;
        servaddr.sin_port = htons(PORT);
        if (inet_pton(AF_INET, IPSTR, &servaddr.sin_addr) <= 0 ){
        	return (*e)->NewStringUTF(e, "Fail -1");
                exit(0);
        };
        if (connect(sockfd, (struct sockaddr *)&servaddr, sizeof(servaddr)) < 0){
        	return (*e)->NewStringUTF(e, "Fail 00");
                exit(0);
        }
        printf("与远端建立了连接\n");


        //发送数据
        memset(str2, 0, 30);
        strcat(str2, "\203\250userName\243Aoi\245UsrID\240\246TimeID\000");
//        str=(char *)malloc(29);
//        len = strlen(str2);
//        sprintf(str, "%d", len);

        memset(str1, 0, 8192);
        strcat(str1, "POST /loginServlet.do");
//        strcat(str1, "platform: Android\r\n");
//        strcat(str1, "User-Id: 0\r\n");
//        strcat(str1, "User-Agent: Dalvik/1.6.0 (Linux; U; Android 4.1.1; MI 2C MIUI/3.12.6)\r\n");
        strcat(str1, "Host: localhost\r\n");
//        strcat(str1, "Connection: Keep-Alive\r\n");
//        strcat(str1, "Accept-Encoding: gzip\r\n");
        strcat(str1, "Content-Type: application/x-www-form-urlencoded\r\n");
        strcat(str1, "Content-Length: 29\r\n");
//        strcat(str1, str);
//        strcat(str1, "\n\n");

        strcat(str1, str2);
        strcat(str1, "\r\n");
        printf("%s\n",str1);

        ret = write(sockfd,str1,strlen(str1));
        return (*e)->NewStringUTF(e, str1);
        if (ret < 0) {
                printf("发送失败！错误代码是%d，错误信息是'%s'\n",errno, strerror(errno));
                return (*e)->NewStringUTF(e, "Fail 01");
        }else{
                printf("消息发送成功，共发送了%d个字节！\n\n", ret);
//                temp=(char *)malloc(29);
//                sprintf(temp,"%d",ret);
                        }

        FD_ZERO(&t_set1);
        FD_SET(sockfd, &t_set1);


        while(1){
                        memset(buf, 0, 4096);
                sleep(2);
                tv.tv_sec= 0;
                tv.tv_usec= 0;
                h= 0;
                printf("--------------->1");
                h= select(sockfd +1, &t_set1, NULL, NULL, &tv);
                printf("--------------->2");

                //if (h == 0) continue;
                if (h < 0) {
                        close(sockfd);
                        printf("在读取数据报文时SELECT检测到异常，该异常导致线程终止！\n");
                        return (*e)->NewStringUTF(e, "Fail 02");
                };

                if (h > 0){
                        i= read(sockfd, buf, 4095);
                        if (i==0){
                                close(sockfd);
                                printf("读取数据报文时发现远端关闭，该线程终止！\n");
                                return (*e)->NewStringUTF(e, "Fail 03");
                        }

                        printf("%s\n", buf);
                }
        }
        close(sockfd);
        jstring jstrRe = stoJstring(e, buf);

        return jstrRe;
}



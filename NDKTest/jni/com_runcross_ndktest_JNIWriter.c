#include <stdio.h>
#include <stdlib.h>
#include "com_runcross_ndktest_JNIWriter.h"
JNIEXPORT jstring JNICALL Java_com_runcross_ndktest_JNIWriter_write(JNIEnv *e,
		jobject j, jstring str) {
	const char *pc = (char *) (*e)->GetStringUTFChars(e, str, NULL);

	FILE * v = fopen("/storage/sdcard0/androidos.cc.txt", "w+");
	fprintf(v, pc);
	fclose(v);

	return (*e)->NewStringUTF(e, "success!");
}

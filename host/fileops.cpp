#include "fileops.h"
#include <fstream>

int load_file_to_memory(const char *filename, char **result){ 
	int size = 0;
  	FILE *f = fopen(filename, "rb");
  	if (f == NULL){ 
		*result = NULL;
    		return -1; // -1 means file opening fail 
	} 
	fseek(f, 0, SEEK_END);
  	size = ftell(f);
  	fseek(f, 0, SEEK_SET);
  	*result = (char *)malloc(size+1);
	if (size != fread(*result, sizeof(char), size, f)){ 
		free(*result);
		return -2; // -2 means file reading fail
	} 
	fclose(f);
	(*result)[size] = 0;
	return size;
}


char *readFile(const char *fileName){
	FILE *file = fopen(fileName, "r");
	char *code;
	size_t n = 0;
	int c;
	
	if (file == NULL) return NULL; //could not open file
    	fseek(file, 0, SEEK_END);
    	long f_size = ftell(file);
    	fseek(file, 0, SEEK_SET);
    	code = (char*)malloc(f_size);
    	while ((c = fgetc(file)) != EOF){
		code[n++] = (char)c;
	}
	code[n] = '\0';        
    	return code;
}

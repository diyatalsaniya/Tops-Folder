// WAP to accept 5 students name and store it in array

#include <stdio.h>

#define MAX_STUDENTS 5
#define MAX_NAME_LENGTH 50
main() 
{
	
    char students[MAX_STUDENTS][MAX_NAME_LENGTH];
    int i;

    printf("Enter the names of %d students:\n", MAX_STUDENTS);
    for (i = 0; i < MAX_STUDENTS; i++) 
	{
        printf("Student %d: ", i + 1);
        fgets(students[i], sizeof(students[i]), stdin);
        
        size_t length = strlen(students[i]);
        if (length > 0 && students[i][length - 1] == '\n') 
		{
            students[i][length - 1] = '\0';
        }
    }

    printf("\nNames of the students:\n");
    for (i = 0; i < MAX_STUDENTS; i++) 
	{
        printf("Student %d: %s\n", i + 1, students[i]);
    }

}


#include<stdio.h>
main()
{

  char fname[20],lname[20];
  printf("Enter School First Name : ");
  scanf("%s", &fname);
  printf("Enter School Last Name : ");
  scanf("%s", &lname);
  
  printf("Abbreviated Name: %c. %c. School", fname[0], lname[0]); // print first letter of first name and forst letter of last name
  
}

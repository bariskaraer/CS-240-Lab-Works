  // This is also in a high-level language
  // but every line corresponds to an assembly instruction
  int k = -1;
	int m = 0;
    int SIZE = 10;
	int a[SIZE] = {9, 1, 2, 4, 3, 8, 7, 6, 5, 0};
	int temp; 
	
	
	
START:	
	k = k + 1;
	temp = k;
	temp = temp<SIZE;
	if (temp == 0) goto END;
	m = -1;
SecondPHASE:
	m = m+1;
	temp = m;
	temp2 = (SIZE-k-1)
	temp = temp < temp2
	if(temp == 0) goto START
	temp = a[m+1]
	temp = temp < a[m]
	if(temp == 0) goto SecondPHASE
	temp = a[m]
	a[m] = a[m+1]
	a[m+1] = temp;
	goto SecondPHASE;
END:
	goto END;


	
	
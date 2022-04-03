//This Program is Problem1-LTL-TRAINING-RERS18.c
#include<stdio.h>
#ifdef LLBMC
#include <llbmc.h>
#else
#include <klee/klee.h>
#endif

#define BOUND 15
int kappa;

int input,output;
#include <assert.h>
#include <math.h>
#include <stdlib.h>

 
	// inputs
	int inputs[] = {4,5,3,1,2};

	int calculate_output(int);
	int calculate_outputm1(int);
	int calculate_outputm2(int);
	int calculate_outputm3(int);
	int calculate_outputm4(int);
	int calculate_outputm5(int);
	int calculate_outputm6(int);
	int calculate_outputm7(int);
	int calculate_outputm8(int);
	int calculate_outputm9(int);
	int calculate_outputm10(int);
	int calculate_outputm11(int);
	int calculate_outputm12(int);
	int calculate_outputm13(int);
	int calculate_outputm14(int);
	int calculate_outputm15(int);
	int calculate_outputm16(int);
	int calculate_outputm17(int);
	int calculate_outputm18(int);
	int calculate_outputm19(int);
	int calculate_outputm20(int);
	int calculate_outputm21(int);
	int calculate_outputm22(int);
	int calculate_outputm23(int);
	int calculate_outputm24(int);
	int calculate_outputm25(int);
	int calculate_outputm26(int);
	int calculate_outputm27(int);

	 int a2135605241  = 32;
	 int a1917497990  = 32;
	 int a33642816  = 34;
	 int cf = 1;
	 int a1033413197 = 7;
	 int a1354855424  = 35;
	 int a1268307040 = 4;

 int calculate_outputm1(int input) {
    if((a33642816 == 33 && ((a1917497990 == 33 &&  cf==1 ) && (input == 3)))) {
    	cf = 0;
    	a33642816 = 35 ;
    	a1268307040 = 4; 
    	 klee_assert(0);//printf("%d\n", 20);  
    } 
    if((a1917497990 == 33 && (((input == 1) &&  cf==1 ) && a33642816 == 33))) {
    	cf = 0;
    	a33642816 = 34 ;
    	a2135605241 = 34 ; 
    	 klee_assert(0);//printf("%d\n", 21);  
    } 
}
 int calculate_outputm2(int input) {
    if(((a33642816 == 33 && ( cf==1  && a1917497990 == 32)) && (input == 4))) {
    	cf = 0;
    	a33642816 = 32 ;
    	a1033413197 = 4; 
    	 klee_assert(0);//printf("%d\n", 23);  
    } 
    if(((((input == 3) &&  cf==1 ) && a33642816 == 33) && a1917497990 == 32)) {
    	cf = 0;
    	a33642816 = 36 ;
    	a1354855424 = 36 ; 
    	 klee_assert(0);//printf("%d\n", 24);  
    } 
    if(((( cf==1  && a33642816 == 33) && a1917497990 == 32) && (input == 5))) {
    	cf = 0;
    	a33642816 = 32 ;
    	a1033413197 = 4; 
    	 klee_assert(0);//printf("%d\n", 19);  
    } 
}
 int calculate_outputm3(int input) {
    if((((input == 3) && (a33642816 == 33 &&  cf==1 )) && a1917497990 == 34)) {
    	cf = 0;
    	a33642816 = 32 ;
    	a1033413197 = 6; 
    	 klee_assert(0);//printf("%d\n", 26);  
    } 
}
 int calculate_outputm4(int input) {
    if(((((input == 2) &&  cf==1 ) && a33642816 == 33) && a1917497990 == 35)) {
    	cf = 0;
    	 
    	 klee_assert(0);//printf("%d\n", 20);  
    } 
    if((a33642816 == 33 && (a1917497990 == 35 && ((input == 5) &&  cf==1 )))) {
    	cf = 0;
    	a33642816 = 35 ;
    	a1268307040 = 11; 
    	 klee_assert(0);//printf("%d\n", 25);  
    } 
    if(((( cf==1  && (input == 1)) && a1917497990 == 35) && a33642816 == 33)) {
    	cf = 0;
    	a33642816 = 34 ;
    	a2135605241 = 33 ; 
    	 klee_assert(0);//printf("%d\n", 26);  
    } 
}
 int calculate_outputm5(int input) {
    if(((( cf==1  && a33642816 == 33) && (input == 5)) && a1917497990 == 36)) {
    	cf = 0;
    	a1917497990 = 33 ; 
    	 klee_assert(0);//printf("%d\n", 25);  
    } 
}
 int calculate_outputm6(int input) {
    if((a1033413197 == 1 && (((input == 1) &&  cf==1 ) && a33642816 == 32))) {
    	cf = 0;
    	a33642816 = 36 ;
    	a1354855424 = 36 ; 
    	 klee_assert(0);//printf("%d\n", 24);  
    } 
}
 int calculate_outputm7(int input) {
    if(((input == 5) && (a1033413197 == 2 && (a33642816 == 32 &&  cf==1 )))) {
    	cf = 0;
    	a33642816 = 33 ;
    	a1917497990 = 32 ; 
    	 klee_assert(0);//printf("%d\n", 22);  
    } 
}
 int calculate_outputm8(int input) {
    if(((input == 1) && (a1033413197 == 4 && (a33642816 == 32 &&  cf==1 )))) {
    	cf = 0;
    	a1033413197 = 1; 
    	 klee_assert(0);//printf("%d\n", 26);  
    } 
}
 int calculate_outputm9(int input) {
    if((a33642816 == 32 && ((input == 2) && ( cf==1  && a1033413197 == 5)))) {
    	cf = 0;
    	a33642816 = 35 ;
    	a1268307040 = 11; 
    	 klee_assert(0);//printf("%d\n", 25);  
    } 
}
 int calculate_outputm10(int input) {
    if((a1033413197 == 6 && ((input == 2) && ( cf==1  && a33642816 == 32)))) {
    	cf = 0;
    	a1033413197 = 5; 
    	 klee_assert(0);//printf("%d\n", 22);  
    } 
}
 int calculate_outputm11(int input) {
    if(((((input == 1) &&  cf==1 ) && a1033413197 == 7) && a33642816 == 32)) {
    	cf = 0;
    	a33642816 = 34 ;
    	a2135605241 = 36 ; 
    	 klee_assert(0);//printf("%d\n", 22);  
    } 
}
 int calculate_outputm12(int input) {
    if(((( cf==1  && a2135605241 == 33) && a33642816 == 34) && (input == 2))) {
    	cf = 0;
    	a33642816 = 36 ;
    	a1354855424 = 33 ; 
    	 klee_assert(0);//printf("%d\n", 21);  
    } 
}
 int calculate_outputm13(int input) {
    if(((a33642816 == 34 && ((input == 4) &&  cf==1 )) && a2135605241 == 32)) {
    	cf = 0;
    	a33642816 = 36 ;
    	a1354855424 = 35 ; 
    	 klee_assert(0);//printf("%d\n", 22);  
    } 
    if(((( cf==1  && a33642816 == 34) && (input == 2)) && a2135605241 == 32)) {
    	cf = 0;
    	a33642816 = 36 ;
    	a1354855424 = 33 ; 
    	 klee_assert(0);//printf("%d\n", 21);  
    } 
    if(((a2135605241 == 32 && ( cf==1  && (input == 3))) && a33642816 == 34)) {
    	cf = 0;
    	a33642816 = 35 ;
    	a1268307040 = 8; 
    	 klee_assert(0);//printf("%d\n", 20);  
    } 
}
 int calculate_outputm14(int input) {
    if(((( cf==1  && a33642816 == 34) && (input == 3)) && a2135605241 == 34)) {
    	cf = 0;
    	a33642816 = 35 ;
    	a1268307040 = 10; 
    	 klee_assert(0);//printf("%d\n", 19);  
    } 
}
 int calculate_outputm15(int input) {
    if(((a2135605241 == 35 && ((input == 4) &&  cf==1 )) && a33642816 == 34)) {
    	cf = 0;
    	a33642816 = 36 ;
    	a1354855424 = 35 ; 
    	 klee_assert(0);//printf("%d\n", 19);  
    } 
    if((a33642816 == 34 && (a2135605241 == 35 && ( cf==1  && (input == 1))))) {
    	cf = 0;
    	a33642816 = 36 ;
    	a1354855424 = 35 ; 
    	 klee_assert(0);//printf("%d\n", 26);  
    } 
    if(((a2135605241 == 35 && ( cf==1  && (input == 3))) && a33642816 == 34)) {
    	cf = 0;
    	a33642816 = 36 ;
    	a1354855424 = 32 ; 
    	 klee_assert(0);//printf("%d\n", 22);  
    } 
}
 int calculate_outputm16(int input) {
    if(((input == 3) && ((a2135605241 == 36 &&  cf==1 ) && a33642816 == 34))) {
    	cf = 0;
    	a33642816 = 35 ;
    	a1268307040 = 6; 
    	 klee_assert(0);//printf("%d\n", 24);  
    } 
}
 int calculate_outputm17(int input) {
    if((a1268307040 == 4 && (((input == 3) &&  cf==1 ) && a33642816 == 35))) {
    	cf = 0;
    	a33642816 = 34 ;
    	a2135605241 = 36 ; 
    	 klee_assert(0);//printf("%d\n", 22);  
    } 
    if(((input == 5) && (a1268307040 == 4 && (a33642816 == 35 &&  cf==1 )))) {
    	cf = 0;
    	a33642816 = 34 ;
    	a2135605241 = 36 ; 
    	 klee_assert(0);//printf("%d\n", 22);  
    } 
}
 int calculate_outputm18(int input) {
    if(((a33642816 == 35 && ((input == 3) &&  cf==1 )) && a1268307040 == 5)) {
    	cf = 0;
    	 
    	 klee_assert(0);//printf("%d\n", 23);  
    } 
    if((((input == 5) && ( cf==1  && a33642816 == 35)) && a1268307040 == 5)) {
    	cf = 0;
    	a1268307040 = 6; 
    	 klee_assert(0);//printf("%d\n", 24);  
    } 
}
 int calculate_outputm19(int input) {
    if(((input == 3) && ((a1268307040 == 6 &&  cf==1 ) && a33642816 == 35))) {
    	cf = 0;
    	a33642816 = 32 ;
    	a1033413197 = 7; 
    	 klee_assert(0);//printf("%d\n", 24);  
    } 
    if(((input == 1) && ((a33642816 == 35 &&  cf==1 ) && a1268307040 == 6))) {
    	cf = 0;
    	a33642816 = 33 ;
    	a1917497990 = 36 ; 
    	 klee_assert(0);//printf("%d\n", 26);  
    } 
}
 int calculate_outputm20(int input) {
    if(((((input == 4) &&  cf==1 ) && a33642816 == 35) && a1268307040 == 7)) {
    	cf = 0;
    	a33642816 = 36 ;
    	a1354855424 = 35 ; 
    	 klee_assert(0);//printf("%d\n", 26);  
    } 
}
 int calculate_outputm21(int input) {
    if(((( cf==1  && (input == 3)) && a33642816 == 35) && a1268307040 == 8)) {
    	cf = 0;
    	a1268307040 = 5; 
    	 klee_assert(0);//printf("%d\n", 20);  
    } 
}
 int calculate_outputm22(int input) {
    if((a1268307040 == 10 && ((input == 5) && (a33642816 == 35 &&  cf==1 )))) {
    	cf = 0;
    	a33642816 = 34 ;
    	a2135605241 = 36 ; 
    	 klee_assert(0);//printf("%d\n", 22);  
    } 
    if((((input == 3) && ( cf==1  && a33642816 == 35)) && a1268307040 == 10)) {
    	cf = 0;
    	a33642816 = 34 ;
    	a2135605241 = 36 ; 
    	 klee_assert(0);//printf("%d\n", 22);  
    } 
}
 int calculate_outputm23(int input) {
    if((a1268307040 == 11 && (a33642816 == 35 && ((input == 2) &&  cf==1 )))) {
    	cf = 0;
    	a33642816 = 33 ;
    	a1917497990 = 34 ; 
    	 klee_assert(0);//printf("%d\n", 24);  
    } 
}
 int calculate_outputm24(int input) {
    if((((input == 2) && (a33642816 == 36 &&  cf==1 )) && a1354855424 == 33)) {
    	cf = 0;
    	a33642816 = 33 ;
    	a1917497990 = 35 ; 
    	 klee_assert(0);//printf("%d\n", 19);  
    } 
}
 int calculate_outputm25(int input) {
    if((((input == 1) && (a33642816 == 36 &&  cf==1 )) && a1354855424 == 32)) {
    	cf = 0;
    	a33642816 = 34 ;
    	a2135605241 = 35 ; 
    	 klee_assert(0);//printf("%d\n", 25);  
    } 
}
 int calculate_outputm26(int input) {
    if((a1354855424 == 35 && (a33642816 == 36 && ((input == 3) &&  cf==1 )))) {
    	cf = 0;
    	a33642816 = 35 ;
    	a1268307040 = 7; 
    	 klee_assert(0);//printf("%d\n", 23);  
    } 
    if(((input == 5) && (( cf==1  && a33642816 == 36) && a1354855424 == 35))) {
    	cf = 0;
    	a33642816 = 32 ;
    	a1033413197 = 4; 
    	 klee_assert(0);//printf("%d\n", 23);  
    } 
    if((((input == 4) && ( cf==1  && a33642816 == 36)) && a1354855424 == 35)) {
    	cf = 0;
    	a1354855424 = 32 ; 
    	 klee_assert(0);//printf("%d\n", 22);  
    } 
}
 int calculate_outputm27(int input) {
    if((a33642816 == 36 && (a1354855424 == 36 && ( cf==1  && (input == 5))))) {
    	cf = 0;
    	a33642816 = 32 ;
    	a1033413197 = 1; 
    	 klee_assert(0);//printf("%d\n", 22);  
    } 
    if((((a33642816 == 36 &&  cf==1 ) && a1354855424 == 36) && (input == 1))) {
    	cf = 0;
    	a33642816 = 32 ;
    	a1033413197 = 2; 
    	 klee_assert(0);//printf("%d\n", 23);  
    } 
}

 int calculate_output(int input) {
        cf = 1;

    if((a33642816 == 33 &&  cf==1 )) {
    	if((a1917497990 == 33 &&  cf==1 )) {
    		calculate_outputm1(input);
    	} 
    	if((a1917497990 == 32 &&  cf==1 )) {
    		calculate_outputm2(input);
    	} 
    	if((a1917497990 == 34 &&  cf==1 )) {
    		calculate_outputm3(input);
    	} 
    	if((a1917497990 == 35 &&  cf==1 )) {
    		calculate_outputm4(input);
    	} 
    	if((a1917497990 == 36 &&  cf==1 )) {
    		calculate_outputm5(input);
    	} 
    } 
    if((a33642816 == 32 &&  cf==1 )) {
    	if(( cf==1  && a1033413197 == 1)) {
    		calculate_outputm6(input);
    	} 
    	if((a1033413197 == 2 &&  cf==1 )) {
    		calculate_outputm7(input);
    	} 
    	if(( cf==1  && a1033413197 == 4)) {
    		calculate_outputm8(input);
    	} 
    	if(( cf==1  && a1033413197 == 5)) {
    		calculate_outputm9(input);
    	} 
    	if((a1033413197 == 6 &&  cf==1 )) {
    		calculate_outputm10(input);
    	} 
    	if(( cf==1  && a1033413197 == 7)) {
    		calculate_outputm11(input);
    	} 
    } 
    if(( cf==1  && a33642816 == 34)) {
    	if((a2135605241 == 33 &&  cf==1 )) {
    		calculate_outputm12(input);
    	} 
    	if(( cf==1  && a2135605241 == 32)) {
    		calculate_outputm13(input);
    	} 
    	if(( cf==1  && a2135605241 == 34)) {
    		calculate_outputm14(input);
    	} 
    	if((a2135605241 == 35 &&  cf==1 )) {
    		calculate_outputm15(input);
    	} 
    	if((a2135605241 == 36 &&  cf==1 )) {
    		calculate_outputm16(input);
    	} 
    } 
    if(( cf==1  && a33642816 == 35)) {
    	if((a1268307040 == 4 &&  cf==1 )) {
    		calculate_outputm17(input);
    	} 
    	if(( cf==1  && a1268307040 == 5)) {
    		calculate_outputm18(input);
    	} 
    	if(( cf==1  && a1268307040 == 6)) {
    		calculate_outputm19(input);
    	} 
    	if((a1268307040 == 7 &&  cf==1 )) {
    		calculate_outputm20(input);
    	} 
    	if(( cf==1  && a1268307040 == 8)) {
    		calculate_outputm21(input);
    	} 
    	if((a1268307040 == 10 &&  cf==1 )) {
    		calculate_outputm22(input);
    	} 
    	if((a1268307040 == 11 &&  cf==1 )) {
    		calculate_outputm23(input);
    	} 
    } 
    if((a33642816 == 36 &&  cf==1 )) {
    	if((a1354855424 == 33 &&  cf==1 )) {
    		calculate_outputm24(input);
    	} 
    	if(( cf==1  && a1354855424 == 32)) {
    		calculate_outputm25(input);
    	} 
    	if((a1354855424 == 35 &&  cf==1 )) {
    		calculate_outputm26(input);
    	} 
    	if((a1354855424 == 36 &&  cf==1 )) {
    		calculate_outputm27(input);
    	} 
    } 


    if( cf==1 )
	{		
    	//fprintf(stderr, "Invalid input: %d\n", input); 

	}
 }

int main()
{
kappa = 0;
    // main i/o-loop
    int symb;
   for (int FLAG=0;FLAG<BOUND;FLAG++)
    {
    klee_make_symbolic(&symb, sizeof(int ), "symb");     

        // read input
                
             
        // operate eca engine
        if((symb != 4) && (symb != 5) && (symb != 3) && (symb != 1) && (symb != 2))
          return -2;
        calculate_output(symb);
    }
    
    return 0;
    }
	

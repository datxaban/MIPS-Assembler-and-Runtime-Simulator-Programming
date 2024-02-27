### Notes
- The main purpose of this program is to get familiar with data transfer instructions such as lw, sw.
- Although the MARS simulator supports a number of pseudo instructions such as lw $s1, $s0 stand- ing for lw $s1, 0($s0), please use standard MIPS instructions.
- Exercises in this document requires an array declaring in the .data section. To get the base address of the array, please use the pseudo instruction la $s1, array.

**Question 1.** Write a MIPS program with the following requirements:
- Declare an integer array with 10 synthetic data elements.
- Calculate the sum of all array elements.
- Print the result to the terminal.

**Question 2.** Write a MIPS program with the following requirements:
- Declare an integer array with 10 synthetic data elements.
- Calculate the sum of all odd elements (a[1]], a[3],...).
- Calculate the sum of all even elements (a[0], a[2],...).
- Print the results to the terminal.

**Question 3.** Write a MIPS program that receives 10 integer numbers from users through the terminal and store these numbers into an array. Print the sum of all array elements to the terminal.

**Question 4.** Write a MIPS program with the following requirements:
- Declare an integer array with 10 synthetic data elements.
- Print a sentence to terminal to request an integer number that is greater than 0 and less than 10 (assume that user strictly follow this rule).
- Print value of the element at index collected from the previous step.

**Question 5.** Write a MIPS program that reverses an 10 elements integer array. For example, the array initially stores 1, 3, 5, 7, 9, 11, 13, 15, 17, 19 , the program will change the array to be 19, 17, 15, 13, 11, 9, 7, 5, 3, 1.

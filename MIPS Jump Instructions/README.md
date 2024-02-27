### Notes
- The main purpose of this week is to practice the conditional branch and unconditional jump instructions
- All the exercises in this document deal with integer numbers that are stored in 4-byte words.

**Question 1**. Write a MIPS program with the following steps:
- Request an integer number from users.
- If the number is positive, repeat step 1. Otherwise, print sum of all integer numbers that the program has read from users.

**Question 2**. Implement the following C code by using MIPS code. Assume that b and c are 10 and 5, respectively while input variable is read from keyboard. Print value of a to the terminal.
```
switch (input){
case 0: a = b + c; break;
case 1: a = b - c; break;
case 2: a = c -b; break;
default: printf{"please input an another integer numbers\n"}; break;
}
```

**Question 3**. Write a MIPS program with the following requirements:
- Declare an integer array with 10 synthetic data elements.
- Read an integer number from users.
- Find in the array if the integer read from user exists in the array or not. Print the position of the integer number in the array if found; otherwise tell users that the number does not exist in the array.




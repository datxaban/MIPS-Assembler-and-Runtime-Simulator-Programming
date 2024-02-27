### Notes
- The main purpose of this session is to continually practice non-leaf/recursive procedures call.

**Question 1**. In this exercise, students are required to write a recursive program although the problem can be solved by iterations. Write a MIPS program that calculate the sum of all 10 elements in an integer array. Bellow is pseudo code using recursive:

```
int sum(int *v, int k){
  if (k == 1) return v[0];
    return v[0] + sum(&v[1], k-1);
}
```

**Question 2**. Taking the same requirement in the previous exercise. Write a MIPS program that is able to find the maximum elements in an array. Bellow is pseudo code using recursive:

```
int max(int *v, int k){
  if (k == 1) return v[0];
  int temp = max(&v[1], k - 1);
  if (v[0] >= temp) return v[0];
  else return temp;
}
```

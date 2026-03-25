# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Group 56: Shadrick Zulu & Adnan Dulic

## Summary

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

We cannot use structural Verilog to implement latches because structural Verilog does not hold values over a period of time. By using sequential logic, we can get values to persist throughout time and be reused later. 

### What is the meaning of always @(*) in a sensitivity block?

The meaning of always @(*) in a sensitivity block means that all inputs listed within the module are included automatically. If we wanted to specify which inputs we want to use and in which order, such as in d_latch.v, we can do always @(E,D).

### What importance is memory to digital circuits?

The importance of memory in digital circuits is that it can cut down on operational costs when running circuits and other bits of code. Having memory that can easily transfer significantly reduces the amount of code/processing power required to make circuits. 

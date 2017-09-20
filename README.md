# ExchangeBalls

This app will help you calculate the results of the ball exchange.
Given 8 balls aligned horizontally and numbered 1, 2, 3, 4, 5, 6, 7, 8 from left to right. Following N operations in the given order.
Exchange `A_1th` ball from the left and `B_1th` ball from the left.
Exchange `A_2th` ball from the left and `B_2th` ball from the left. 

:
Exchange `A_Nth` ball from the left and `B_Nth` ball from the left.
This series of N operations stated above will be one set.Output are arrangement of these balls after repeating K sets.

###Input###Input will be given in the following format from Standard Input: 

```
NKA_1 B_1A_2 B_2
:
A_N B_N

```

* On the 1st line, integer `N(1≦N≦50)` represents the number of operations that are included in one set, and integer `K(1≦K≦10^9)` represents the number of sets. They are separated with a space.

* On the following N lines, the operations to perform are given. Each line contains two integers `Ai`, `Bi` `(1≦Ai, Bi≦8, Ai≠Bi)` that represent the exchanges to be made. They are separated with a space.


###Output###
The output should be a single line with the number for each ball in their final order, with a space between each number.

####Input Example####

```6 4

1 8

2 3

4 5

2 4

7 2

3 1
```
####Output Example####
`4 3 7 2 1 6 8 5`
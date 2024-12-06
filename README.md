# Haskell Lazy Evaluation Bug

This repository demonstrates a subtle bug in Haskell code that arises from the interaction between lazy evaluation and infinite lists. The `findCommon` function attempts to find the intersection of two lists. When one of the lists is infinite, the program hangs because the `intersect` function never finishes evaluating.

## Bug Description

The bug stems from the use of `intersect` with an infinite list. Haskell's lazy evaluation means that `intersect` will begin processing the infinite list before potentially finding an element in common with the finite list. This causes the program to never terminate, even though a common element may exist.

## Solution

The solution involves modifying the `findCommon` function to use a more efficient approach that handles infinite lists correctly. The `bugSolution.hs` file provides a solution that addresses this issue.
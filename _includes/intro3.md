This question is a bit more difficult than the previous two, though it can be broken down into several smaller tasks:

1. Deduplicate the digits in each of the number. Using `HasSet` is the standard way to do this. Using bit manipulation of a `int` or even `short` variable is a special trick to save spaces and boost performance. This is feasible as digits are always in the range of \\([0, 9]\\), which only requires \\(10\\) bits to store the information. `BitSet` is another choice, though constructing a new object is less efficient than using primitive integer.
2. Break down the whole array into several _friendly_ sequences, each sequence will have \\(\frac{n (n - 1)}{2}\\) subsequences. Summing these numbers will yield the final result.

The two tasks above can be combined so we can complete this in one pass.

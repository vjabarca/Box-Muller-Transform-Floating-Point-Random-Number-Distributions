# Box-Muller-Transform-Floating-Point-Random-Number-Distributions

This is a synthesizable block that implements the Box-Muller transform to convert two random numbers to an approximation of a Gaussian random number distribution.

# Overview

- The input are two random numbers (provided by a test bench), a random number is produced as output.

a ← √−2ln(U1)
b ←2πU2
res ← asin(b)

- U1, U2 are uniformly distributed random numbers ranging from 0 to 1. Zero and One will not appear as U1 or U2. (Removed from the data to make special cases easier)
- Note: In the literature, a cos(b) is also a random number. This is discarded in this project due to the 'xed relation between a sin(b) and a cos(b).
- The goal is to get 8 digits of precision in the results. Double precision floating point is required. The algorithm is implemented in verilog using double precision floating point.
- Detailed description: Please go through the attached document "randist002.pdf" for the complete design specification of the Box-Muller block.

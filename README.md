# Making Change (money)

The following problem is demonstrated in four different programming paradigms (language):
- functional.rkt (Racket)
- procedural.asm (Assembly)
- objective.rb (Ruby)
- logical.pl (Prolog)

Reference: https://www.youtube.com/watch?v=cgVVZMfLjEI 


### Input parameters
- change: amount to make up
- denominations: array of coin types available in cashier drawer

*only objective have different input params to adhere to the idea of OOP.

### Output
- #coin: array of # for each coin type needed to make the change

### Assumptions
- change is precalculated in input (amount given - amount owed/billed)
- unlimited supply of each coin type
# Comparing the Behavior of Python and R

This week, we will be exploring the behavior of Python for several common 
actions that we have previously covered in R. The final product of today's work 
will be a markdown document with your answers to the questions below.

### Instructions

----------

1) Separate into groups of (ideally) 3 or (if necessary) 4
    - Make sure there is no more than 1 person with extensive Python experience in each group
2) Everyone needs to create a new folder in their github repository, `section09`
    - It must be called exactly this, or else we can't find it later
3) Groups should try to answer every question below. There are 2 ways to go about this:
    - Everyone can work on a different question, until all of the questions are answered
    - The group can work together, answering each question in turn
    - Feel free to use a mixture of the above methods, helping if members become stuck
    on any questions
    - There is some example python code in this [file](./syntax.py)
4) Combine the solutions into one document that each group member must upload to their
github.
    - The document must be named `s09Solutions.Rmd`
    - Each group member must upload the exact same document to their own repository
    - i.e., for a 3-person group, there will be three submissions that are exactly the same.

### Questions

----------

#### Main Questions

(Work on all of these)

1) Do Python functions behave like pass-by-value or pass-by-reference.  
I.e., if you pass in an object and modify it, does that affect the value of the 
object in the environment from which the function was called?  
Check this for a scalar, a list, and a numpy array.

2) If you copy a list, dictionary, or numpy array in Python, are the values copied 
or does the new object just use the same memory as the original object?

3) How are `NA`s handled in Python lists? What about in numpy arrays?

4) Do Python functions use promises/lazy evaluation?

5) Assess whether it is inefficient to grow a list in Python, as it is in R. 
Consider whether a copy is made when the object grows.

6) How does variable scoping work in Python - does it use lexical scoping and 
look for variables in the environment where a function was defined?

7) Are the maximum and minimum sizes of integers and real-valued numbers as they are in R?

8) Can you create a closure with embedded data, like we did in R?

9) Consider the relative efficiency of for loops versus vectorized calculations 
for numpy arrays and see how it compares to the equivalent operation in R. 

10) Can lists and numpy arrays be modified in place, without copying the object?

11) Consider whether Python allows you to have functions and variables in the 
global environment that have the same names as functions/variables in packages or 
in modules (e.g., a file test.py in your working directory that you can import 
using 'import test'). E.g. consider math.cos and create your own 'cos' function. 
How does this compare to how R finds objects?


#### Additional Questions

(Work on these if you finish quickly/are curious)

12) Can you determine if the speed of looking up values in a dictionary varies 
with the size of the dictionary (this will indicate if something like hashing is 
going on or if the look up has to scan through all the elements).

13) Compare the Python debugger to R's debugger.

14) If you create classes and objects in Python's object-oriented system, what are 
the similarities and differences relative to R's R6 system? There is a brief section 
on object-oriented programming in Python in the lab 7 materials.


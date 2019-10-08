# numbers

pow(math.ceil(3/4)*4, 3)

pow(-1, 1/2)


# tuples

a,b = x,y
x = 5; y = 6
y,x = x,y

xy * 5

# lists

dice = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
dice*3


# for loops and list comprehension

[1, 2, 3] + 3
## `+` only works to 'add' two like things but here 3 is not a list and Python doesn't add element-wise with recycling (unlike in R) for standard lists

values = [1, 2, 3]
[x + 3 for x in values]


# functions

def sqrt(x, allowComplex=True):
    if allowComplex or x > 0:
        return(pow(x, 0.5))
    else:
        return(0)

sqrt(-1)
sqrt(5)

vals = [-1, -2, 5, 0, 3]
[sqrt(val) for val in vals]

          
# numpy

np.array([1, 'a'])

x = np.array([[1, 2], [3, 4]])
y = np.array([1, 10])

x+y

x = np.random.normal(size = (10, 3))
[np.var(x[:,i]) for i in range(x.shape[1])]

# pandas

tmp = dat2007.groupby('continent', as_index=False).mean()

dat2007.merge(tmp[['continent', 'lifeExp']], left_on='continent',
              right_on='continent') 


# strings

x = 'The ant wants what all ants want.'

x.lower()

x.count('ant')

tmp = x.lower()
tmp = tmp.strip(string.punctuation) # only removes from beginning/end of string
tmp.split()

# alternatively:
for punct in string.punctuation:
    tmp = tmp.replace(punct, '')

## the object-oriented way -- composition of operations
x.lower().strip(' .').split()
x.lower().strip(string.punctuation).split()

x.replace(' ant', ' chicken')

x[0:4] + x[6:3:-1] + x[7:]

x.replace('ant', 'tna', 1)

# R's %in% operates on entire elements of a character vector

x = 'a' * 5
%timeit len(x)
x = 'a' * 1000000
%timeit len(x)

# some R code...
system.time(nchar(letters))
x = paste0(rep(paste(letters, collapse=''), 100000), collapse='') 
system.time(nchar(x))

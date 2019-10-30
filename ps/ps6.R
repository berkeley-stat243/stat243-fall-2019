## To convert from a bag to a dataframe, you can use

myBag.to_dataframe(dtypes)

## where 'dtype' is a dictionary defining the types of the items in each element (observation) in the bag.

## Because there are missing values, Dask/Pandas seem to want us to use float64 intead of int64 even though the number of hits and webpage sizes are integer-valued. So I used this specification of the types in the form of a dictionary.

dtypes = {'date': 'object', 'time': 'object', 'language': 'object', 'webpage': 'object', 'hits': 'float64', 'size': 'float64'}

## Before converting to a dataframe, you probably want to have a bag of tuples, but when you read in the data originally you'll have a bag of strings.

myBag = myOriginalBag.map(convert_to_tuple)

## where convert_to_tuple() would use split() and tuple() to go from the string to a tuple.

## You can use obj.to_csv() to output a Pandas dataframe or Pandas series to a CSV file.

## @knitr problem3-part1

## save letters in text format
chars <- sample(letters, 1e6, replace = TRUE)
write.table(chars, file = 'tmp1.csv', row.names = FALSE,
            quote = FALSE, col.names = FALSE)
system('ls -l tmp1.csv', intern = TRUE)

chars <- paste(chars, collapse = '')
write.table(chars, file = 'tmp2.csv', row.names = FALSE,
            quote = FALSE, col.names = FALSE)
system('ls -l tmp2.csv', intern = TRUE)

## save in binary format
nums <- rnorm(1e6)
save(nums, file = 'tmp3.Rda')
system('ls -l tmp3.Rda', intern = TRUE)

## save in text format
write.table(nums, file = 'tmp4.csv', row.names = FALSE,
            quote = FALSE, col.names = FALSE, sep = ',')
system('ls -l tmp4.csv', intern = TRUE)

write.table(round(nums, 2), file = 'tmp5.csv',
            row.names = FALSE, quote = FALSE,
            col.names = FALSE, sep = ',')
system('ls -l tmp5.csv', intern = TRUE)


## @knitr problem3-part2

chars <- sample(letters, 1e6, replace = TRUE)
chars <- paste(chars, collapse = '')
save(chars, file = 'tmp6.Rda')
system('ls -l tmp6.Rda', intern = TRUE)

chars <- rep('a', 1e6)
chars <- paste(chars, collapse = '')
save(chars, file = 'tmp7.Rda')
system('ls -l tmp7.Rda', intern = TRUE)




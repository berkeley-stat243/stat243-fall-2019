## Challenge 6

n <- 2000
k <- 1000
factorial(n)
choose(n, k)

logLikBase <- function(k, n, p, phi) {
  klogk <- ifelse(k == 0, 0, k*log(k))
  nmklognmk <- ifelse(n-k == 0, 0, (n-k)*log(n-k))
  exp(lchoose(n, k) + (klogk + nmklognmk - n*log(n)) +
        phi*(n*log(n) - klogk - nmklognmk) + k*phi*log(p) +
        (n-k)*phi*log(1-p))
}


normConstSlowest <- function(n, p, phi) {
  kvals <- 0:n
  sum(sapply(kvals, logLikBase, n, p, phi))
}





logLik <- function(k, n, p, phi) {
  klogk <- ifelse(k == 0, 0, k*log(k))
  nmklognmk <- ifelse(n-k == 0, 0, (n-k)*log(n-k))
  exp(lchoose(n, k) + (1-phi)*(klogk + nmklognmk - n*log(n)) + k*phi*log(p) + (n-k)*phi*log(1-p))
}

normConstSlow <- function(n, p, phi) {
  kvals <- 0:n
  sum(sapply(kvals, logLik, n, p, phi))
}


benchmark(normConstSlowest(n, p, phi), normConstSlow(n, p, phi), replications = 10, columns = c("test", "elapsed", "replications"))



normConstVec <- function(n, p, phi) { 
  kvals = 0:n
  klogk = kvals*log(kvals)
  klogk[is.nan(klogk)] = 0
  nmklognmk = (n-kvals)*log((n-kvals))
  nmklognmk[is.nan(nmklognmk)] = 0
  sum(exp(lchoose(n, kvals) + (1-phi)*(klogk + nmklognmk - n*log(n)) + kvals*phi*log(p) + (n-kvals)*phi*log(1-p)))
}

library(rbenchmark)
p = .3
phi = .5
n = 2000
benchmark(normConstSlow(n, p, phi), normConstVec(n, p, phi), replications = 10, columns = c("test", "elapsed", "replications"))


## Benchmark the pieces of the computation
k <- 0:n
klogk <- k*log(k)
klogk[1] <- 0
nmklognmk = (n-kvals)*log((n-kvals))
nmklognmk[n+1] = 0
microbenchmark(
  kvals*log(kvals),
  lchoose(n, kvals),
  (1-phi)*(klogk + nmklognmk - n*log(n)),
  kvals*phi*log(p),
  (n-kvals)*phi*log(1-p)
)


normConstFast <- function(n, p, phi) { 
  kvals = 0:n
  klogk = kvals*log(kvals)
  klogk[1] = 0
  nmklognmk = (n-kvals)*log((n-kvals))
  nmklognmk[n+1] = 0
  sum(exp(lgamma(n+1) - lgamma(kvals + 1) - lgamma(n - kvals + 1) + (1-phi)*(klogk + nmklognmk - n*log(n)) + kvals*phi*log(p) + (n-kvals)*phi*log(1-p)))
}


library(rbenchmark)
p = .3
phi = .5
n = 2000
benchmark(normConstSlow(n, p, phi), normConstVec(n, p, phi), normConstFast(n, p, phi), replications = 10, columns = c("test", "elapsed", "replications"))

benchmark(normConstVec(n, p, phi), normConstFast(n, p, phi), replications = 100, columns = c("test", "elapsed", "replications"))

## Challenge 8

n <- 100000
p <- 5

tmp <- exp(matrix(rnorm(n*p), nrow = n, ncol = p))
probs <- tmp / rowSums(tmp)

smp <- rep(0, n)


## loop by row
set.seed(1)
system.time(
    for(i in seq_len(n))
        smp[i] <- sample(p, 1, prob = probs[i, ])
)


## cumulative mass function
cmf <- t(apply(probs, 1, cumsum))


## column-wise determination of where runif is relative to cmf
set.seed(1)
system.time({
    smp <- rep(1, n);
    rands <- runif(n);
    for(j in 1:(p-1))
        smp[rands > cmf[,j]] <- j+1
})

## vectorized determination of where runif is relative to cmf
set.seed(1)
    system.time({
        rands <- runif(n);
        smp <- rowSums(rands > cmf)+1
    })

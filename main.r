source("K_means.r")

Data <- read.table('TrainData.txt', header = FALSE, sep = ',');
Data <- as.matrix(Data);

Vectors <- matrix(rep(0, 20000*1200), nrow = 1200, ncol = 20000);
Z <- matrix(rep(0, 10*1200), nrow = 1200, ncol = 10);

i <- 1;
while (i<=20000)
{
  Vectors[, i] <- Data[i, ];
  i<- i + 1;
}

for (i in 1:10) 
{
  Z[, i] <- round(runif(1200));
}

Result <- rep(0, 20000);
Result <- K_means(Vectors, Z);

t <- rep(0, 1200);
count =0 ;
for (i in 1:20000)
{
    if (Result[i] == 9)
    {
      t = t + Data[i, ];
      count=count+1;
    }
}

t = t/count;
b = matrix(t, nrow = 40, ncol = 30, byrow = TRUE);
image(b);

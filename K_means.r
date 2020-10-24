K_means <- function(Vectors, Z)
{  

    C <- rep(0, 20000);
    Cprime <- rep(0, 20000);
    Bound <- dim(Z)[2];
    counter=0;
      
    while (TRUE)
    {
      par(mfrow=c(2,5));
      for (j in 1:Bound)
      {
        b = matrix(Z[, j], nrow = 40, ncol = 30, byrow = TRUE);
        image(t(apply(b, 2, rev)));
      }
      
      
      Cprime <- C;
      counter = counter + 1;

      for (i in 1:20000)
      {
          Distance <- norm(Vectors[, i]-Z[, 1], type = "2");
          C[i] <- 1;
          
          for (j in 2:Bound)
          {
            if (norm(Vectors[, i]-Z[, j], type = "2") < Distance)
            {
              Distance <- norm(Vectors[, i]-Z[, j], type = "2");
              C[i] <- j;
            }
          }
      }
      
      if (all(Cprime == C))
      {
        break;
      }
      print(counter);

      for (j in 1:Bound)
      {
        Z[, j] <- rep(0, 1200);
        n <- 0;
        for (i in 1: 20000)
        {
          if (C[i] == j)
          {
            Z[, j] <- Z[, j] + Vectors[, i];
            n <- n + 1;
          }
        }
        
        Z[, j] <- Z[, j]/n;
      }
    }
    

    return(C);
}
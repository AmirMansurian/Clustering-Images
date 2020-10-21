K_means <- function(Vectors, Z)
{  

    C <- rep(0, 20000);
    Bound <- dim(Z)[2];
      
    while (TRUE)
    {
      flag <- FALSE;
      
      for (i in 1:20000)
      {
          C[i] <- 1;
          Distance <- norm(Vectors[, i]-Z[, 1], type = "2");
            
          for (j in 2:Bound)
          {
            if (norm(Vectors[, i]-Z[, j], type = "2") < Distance)
            {
              Distance <- norm(Vectors[, i]-Z[, j], type = "2");
              C[i] <- j;
              Flag <- TRUE;
            }
          }
      }
      
      if (flag == FALSE)
      {
        break;
      }
      

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
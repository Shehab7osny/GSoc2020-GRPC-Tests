library(Rcpp)

cppFunction('
            void Samples_Norm(int n, Function callback)
            {
  	          NumericVector Norm_Dist_Values = rnorm(n);

  	          for (int i = 0; i < n; i++)
  	          {
  	            if (Norm_Dist_Values [i] > 0)
                {
                  callback(Norm_Dist_Values[i]);
                }
              }
            }
            ')

Samples_Norm(50, print)


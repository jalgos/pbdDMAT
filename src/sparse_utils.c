#include <R.h>
#include <Rinternals.h>
#include <math.h>

#define false 0
#define true 1

#define fequals(x,y,tol) (fabs(x-y)<tol?true:false)

int sparse_count_zeros(int m, int n, double *x, double tol)
{
  int count = 0;
  int i, j;
  
  for (j=0; j<n; j++)
  {
    for (i=0; i<m; i++)
    {
      if (fequals(x[i + m*j], 0.0, tol))
        count++;
    }
  }
  
  return count;
}


SEXP R_sparse_count_zeros(SEXP x, SEXP tol)
{
  SEXP ret;
  PROTECT(ret = allocVector(INTSXP, 1));
  
  INTEGER(ret)[0] = sparse_count_zeros(nrows(x), ncols(x), REAL(x), REAL(tol)[0]);
  
  UNPROTECT(1);
  return ret;
}

// Dharma Hoy
// STAT 600 HW1
// Fit SLR in Rcpp with RcppArmadillo

#include <RcppArmadillo.h>
//[[Rcpp::depends(RcppArmadillo)]]
using namespace Rcpp;

//' Fit Simple Linear Regression
//'
//' This function takes the input data, assuming a column of ones in the X
//' matrix to estimate the intercept, and returns as a list the estimates,
//' standard errors, confidence intervals, residuals, and predicted values.
//'
//' @param X an arma::max that contains the users input data and a column of ones
//' @param Y and arma::vec that contains the users input data
//' @returns a list containing the estimates of B0 B1, their standard errors
//' confidence intervals, residuals, and predicted values. This list is sent back
//' to the R Wrapper function fitModel.
//' @export

// [[Rcpp::export]]
Rcpp:: List fitLin(arma::mat X, arma::vec Y) {
  // find Betas
  arma::vec BAll = arma::inv(X.t() * X) * X.t() * Y;

  // pull out B0 and B1
  double B0 = BAll(0);
  double B1 = BAll(1);

  // find standard errors
  arma::vec mse = (arma::trans(Y - X * BAll) * (Y - X * BAll)) / (Y.n_elem - 2);
  arma::mat seAll = arma::sqrt(arma::inv(X.t() * X) * mse(0,0));

  // pull out seB0 and seB1
  double seB0 = seAll(0,0);
  double seB1 = seAll(1,1);

  // find confidence intervals
  // get critical value
  NumericVector alpha = {0.025};
  double df = Y.n_elem - 2;
  double tVal = Rcpp::qt(alpha, df, 0, 0)[0];

  // CI for B0
  double lowerB0 = B0 - tVal * seB0;
  double upperB0 = B0 + tVal * seB0;
  arma::vec B0CI = {lowerB0, upperB0};

  // CI for B1
  double lowerB1 = B1 - tVal * seB1;
  double upperB1 = B1 + tVal * seB1;
  arma::vec B1CI = {lowerB1, upperB1};

  // find residuals
  arma::vec resid = Y - X * BAll;

  // find predicted values
  arma::vec predi = X * BAll;

  // return to R as a list
  Rcpp::List results = Rcpp::List::create(
    Rcpp::Named("B0") = B0,
    Rcpp::Named("B0 Standard Error") = seB0,
    Rcpp::Named("B0 Confidence Interval") = B0CI,

    Rcpp::Named("B1") = B1,
    Rcpp::Named("B1 Standard Error") = seB1,
    Rcpp::Named("B1 Confidence Interval") = B1CI,

    Rcpp::Named("Residuals") = resid,
    Rcpp::Named("Predicted Values") = predi
  );

  return results;
}




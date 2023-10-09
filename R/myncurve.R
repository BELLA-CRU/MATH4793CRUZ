#' @title myncurve
#'
#' @param mu mean
#' @param sigma sd
#' @param a probability to calculate
#'
#' @return probability area
#' @export
#'
#' @examples
#' myncurve(10,5,6)
myncurve = function(mu, sigma, a){

  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))

  xcurve <- seq(mu-3*sigma, a, by = 0.1)
  ycurve <- dnorm(xcurve, mean = mu, sd = sigma)
  polygon( c(xcurve, a, mu - 3 * sigma), c(ycurve, 0, 0), col = "lightblue")

  calculated_values <- pnorm(a, mean = mu, sd = sigma)

  return(calculated_values)

}

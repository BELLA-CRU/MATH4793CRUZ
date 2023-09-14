#' @title TSS Calculation
#'
#' @param df dataframe that calculations will be made off of
#' @param value value that calculation will be made off of
#'
#' @return calculated TSS values
#' @export
#'
#' @examples
TSS = function(df, value){

  with(df,sum((value-mean(value))^2))

}

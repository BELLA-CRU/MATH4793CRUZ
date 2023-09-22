#' @title TSS Calculation
#'
#' @param df dataframe that calculations will be made off of
#' @param value value that calculation will be made off of
#'
#' @return calculated TSS values
#' @export
#'
#' @examples
#' TSS(ddt <- read.csv("C:/Users/bella/Documents/School Folders/Fall 2023/Applied Statistical Methods/DATAxls/DDT.csv"), ddt$Height)
TSS = function(df, value){

  with(df,sum((value-mean(value))^2))

}

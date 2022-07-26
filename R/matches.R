#' Makes a standard dataframe for league data
#'
#' @param data_engsoc dataframe from engsoccerdata package
#' @param country one of spain, italy, germany, holland, england
#'
#' @return A dataframe, tibble with columns `country`, `tier`, `season`, `date`,
#'     `home`, `visitor`, `goals_home`, `goals_visitor`.
#' @export
#'
#' @examples
#' uss_make_matches(engsoccerdata::spain, "Spain")
#'
uss_make_matches <- function(data_engsoc, country) {
  result <-
    data_engsoc |>
    tibble::as_tibble() |>
    dplyr::transmute(
      country = as.character(.env$country),
      tier = factor(.data$tier, levels = c("1", "2", "3", "4")),
      season = as.integer(.data$Season),
      date = as.Date(.data$Date),
      home = as.character(.data$home),
      visitor = as.character(.data$visitor),
      goals_home = as.integer(.data$hgoal),
      goals_visitor = as.integer(.data$vgoal)
    )
  result
}

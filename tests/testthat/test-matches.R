test_that("uss_make_matches works", {

  italy <- uss_make_matches(engsoccerdata::italy, "Italy")

  expect_true(tibble::is_tibble(italy)) # output from uss_make_matches is a tibble

  expect_named(
    italy,
    c("country", "tier", "season", "date", "home", "visitor", "goals_home",
      "goals_visitor")) # has columns with the right names

  expect_identical(unique(italy$country), "Italy")

  expect_s3_class(italy$tier, "factor")

})

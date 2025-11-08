test = list(
  name = "e3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        # TESTS
        expect_error(mpg_to_kml("A"))
        expect_error(mpg_to_kml(list(1, 2)))
        expect_error(mpg_to_kml(data.frame(x = c(1))))
      }
    )
  )
)
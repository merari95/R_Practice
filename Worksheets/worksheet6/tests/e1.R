test = list(
  name = "e1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.function(mpg_to_kml))
        expect_equal(mpg_to_kml(1), 0.425144)
        expect_equal(mpg_to_kml(2), 0.850288)
        expect_equal(mpg_to_kml(10), 4.25144)
      }
    )
  )
)
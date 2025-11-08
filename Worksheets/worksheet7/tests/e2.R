test = list(
  name = "e2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.character(months_2020))
        expect_equal(length(months_2020), 12)
        expect_equal(months_2020[1], 'January, 2020')
        expect_equal(months_2020[10], 'October, 2020')
      }
    )
  )
)
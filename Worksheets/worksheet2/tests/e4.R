test = list(
  name = "e4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.numeric(values))
        expect_equal(length(values), 5)
        expect_false(is.list(values))
        expect_equal(round(sum(values)), 55)
      }
    )
  )
)
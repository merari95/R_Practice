test = list(
  name = "e5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.numeric(values_first))
        expect_equal(length(values_first), 1)
        expect_false(is.list(values_first))
        expect_equal(round(sum(values_first)), 2)
      }
    )
  )
)
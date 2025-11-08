test = list(
  name = "e9",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.numeric(value_list_first))
        expect_equal(length(value_list_first), 1)
        expect_false(is.list(value_list_first))
        expect_equal(round(sum(value_list_first)), 2)
      }
    )
  )
)
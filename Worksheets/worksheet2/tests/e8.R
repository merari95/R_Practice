test = list(
  name = "e8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.numeric(value_list[[1]]))
        expect_true(is.numeric(value_list[[2]]))
        expect_true(is.numeric(value_list[[3]]))
        expect_true(is.numeric(value_list[[4]]))
        expect_true(is.numeric(value_list[[5]]))
        expect_equal(length(value_list), 5)
        expect_true(is.list(value_list))
        expect_equal(round(Reduce(`+`, value_list)), 55)
      }
    )
  )
)
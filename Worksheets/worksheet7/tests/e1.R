test = list(
  name = "e1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.numeric(squares))
        expect_equal(length(squares), 10)
        expect_equal(sum(as.numeric(squares)), 385)
        expect_equal(squares[1], 1)
        expect_equal(squares[10], 100)
      }
    )
  )
)
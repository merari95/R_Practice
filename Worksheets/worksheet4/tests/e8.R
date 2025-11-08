test = list(
  name = "e8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_equal(exercise, 'burpees')
        expect_equal(reps, 15)
      }
    )
  )
)
test = list(
  name = "e5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # # TESTS
        expect_equal(digest(answer_5), '3a5505c06543876fe45598b5e5e5195d')
      }
    )
  )
)
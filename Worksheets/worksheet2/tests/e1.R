test = list(
  name = "e1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.logical(answer1))
        expect_equal(digest(answer1 + 13), '709a7faa72cb6f3be79d683e234ccb25')
      }
    )
  )
)
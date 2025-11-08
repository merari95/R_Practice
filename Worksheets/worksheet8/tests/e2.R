test = list(
  name = "e2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_equal(digest(paste(sort(tolower(answer_2)), collapse = "")), '95767987b2037a2f09c4e5c0997ec206')
      }
    )
  )
)
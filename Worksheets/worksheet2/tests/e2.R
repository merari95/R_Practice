test = list(
  name = "e2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.character(answer2))
        expect_equal(length(answer2), 4)
        expect_equal(digest(paste(tolower(sort(answer2)), collapse="")), 'c74b4d11b8d68d188749e3a83e1266c8')
      }
    )
  )
)
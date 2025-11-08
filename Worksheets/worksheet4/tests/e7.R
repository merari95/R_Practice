test = list(
  name = "e7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.character(names))
        expect_equal(length(names), 30)
        expect_false(is.list(names))
        expect_equal(digest(paste(sort(tolower(names)), collapse = "")), '0412318aa56aaeedd35bd633bc98e3db')
      }
    )
  )
)
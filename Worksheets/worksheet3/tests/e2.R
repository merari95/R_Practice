test = list(
  name = "e2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.factor(days_of_week))
        expect_equal(length(days_of_week), 7)
        expect_equal(digest(paste(tolower(sort(as.character(days_of_week))), collapse="")), '59e0c874408c2e1b9e2966b20f588b34')
      }
    )
  )
)
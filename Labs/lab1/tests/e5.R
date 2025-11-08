test = list(
  name = "e5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        # make sure tidy_lang is a data frame
        expect_s3_class(tidy_lang, "data.frame")
      }
    )
  )
)
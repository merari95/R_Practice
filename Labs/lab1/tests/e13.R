test = list(
  name = "e13",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.5,
      code = {
        # make sure edmonton is a data frame
        expect_s3_class(edmonton, "data.frame")
      }
    )
  )
)
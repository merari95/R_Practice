test = list(
  name = "e15",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.5,
      code = {
        # make sure vancouver is a data frame
        expect_s3_class(vancouver, "data.frame")
      }
    )
  )
)
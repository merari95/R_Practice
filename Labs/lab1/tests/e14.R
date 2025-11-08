test = list(
  name = "e14",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.5,
      code = {
        # make sure kelowna is a data frame
        expect_s3_class(kelowna, "data.frame")
      }
    )
  )
)
test = list(
  name = "e16",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.5,
      code = {
        # make sure victoria is a data frame
        expect_s3_class(victoria, "data.frame")
      }
    )
  )
)
test = list(
  name = "e11",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.5,
      code = {
        # make sure abbotsford is a data frame
        expect_s3_class(abbotsford, "data.frame")
      }
    )
  )
)
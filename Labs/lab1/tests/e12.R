test = list(
  name = "e12",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.5,
      code = {
        # make sure calgary is a data frame
        expect_s3_class(calgary, "data.frame")
      }
    )
  )
)
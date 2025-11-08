test = list(
  name = "e4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        # make sure tidy_temps is a data frame
        expect_s3_class(tidy_temps, "data.frame")
        # make sure tidy_temps has 3 columns
        expect_equal(ncol(tidy_temps), 3)
      }
    )
  )
)
test = list(
  name = "e32",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_equal(nrow(flight_tidy2), 6)
        expect_equal(ncol(flight_tidy2), 4)
        expect_equal(paste(tolower(sort(colnames(flight_tidy2))), collapse = ""), 'airlinedatedurationflight')
        expect_equal(round(as.numeric(sum(flight_tidy2$duration, na.rm = TRUE))), 1858)
      }
    )
  )
)
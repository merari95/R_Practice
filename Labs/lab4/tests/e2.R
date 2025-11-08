test = list(
  name = "e2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 10.0,
      code = {
        # visible tests to check object name
        # the remaining tests are hidden
        expect_true(exists("weather_nested"))
        expect_named(weather_nested, c("origin", "month", "data", "min_temp", "max_temp", "avg_temp"), ignore.order = TRUE)

        # HIDDEN
        expect_s3_class(weather_nested, "grouped_df")
        expect_type(weather_nested$origin, "character")
        expect_type(weather_nested$min_temp, "double")
        expect_type(weather_nested$data, "list")
        expect_equal(nrow(weather_nested), 36)
        expect_equal(ncol(weather_nested), 6)
        expect_equal(ncol(weather_nested$data[[1]]), 13)
        expect_equal(nrow(weather_nested$data[[1]]), 742)
        expect_equal(round(sum(arrange(weather_nested, origin, month)$data[[1]]$wind_speed, na.rm=TRUE)), 7327)
        expect_equal(round(sum(weather_nested$min_temp, na.rm=TRUE)), 1292)
        expect_equal(round(sum(weather_nested$max_temp, na.rm=TRUE)), 2814)
        expect_equal(round(sum(weather_nested$avg_temp, na.rm=TRUE)), 1983)
      }
    )
  )
)
test = list(
  name = "e1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 15.0,
      code = {
        # visible tests to check object name
        # the remaining tests are hidden
        expect_true(exists("avg_flights"))
        expect_named(avg_flights, c("carrier", "avg_speed", "avg_distance_km"), ignore.order = TRUE)

        # HIDDEN
        expect_s3_class(avg_flights, "tbl_df")
        expect_type(avg_flights$carrier, "character")
        expect_type(avg_flights$avg_speed, "double")
        expect_type(avg_flights$avg_distance_km, "double")
        expect_equal(nrow(avg_flights), 4)
        expect_equal(ncol(avg_flights), 3)
        #expect_equal(avg_flights[[1]][1], 'Alaska Airlines')
        #expect_equal(avg_flights[[1]][3], 'American Airlines')
        expect_true(avg_flights[[1]][1] %in% c("Alaska Airlines", "US Airways"))
        expect_true(avg_flights[[1]][3] %in% c("American Airlines", "United Airlines"))
        expect_equal(round(sum(as.numeric(avg_flights$avg_speed)), -2), 2600)
      }
    )
  )
)
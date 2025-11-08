test = list(
  name = "e2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.data.frame(flight_dests))
        expect_equal(nrow(flight_dests), 336776)
        expect_equal(ncol(flight_dests), 21)
        expect_equal(paste(tolower(sort(colnames(flight_dests))), collapse = ""), 'air_timearr_delayarr_timecarrierdaydep_delaydep_timedestdistanceflighthourlatlonminutemonthoriginsched_arr_timesched_dep_timetailnumtime_houryear')
        expect_equal(round(sum(flight_dests$lat, na.rm = TRUE)), round(sum(flight_dests$lat, na.rm = TRUE)))
      }
    )
  )
)
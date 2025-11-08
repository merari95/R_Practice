test = list(
  name = "e4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(exists("mds_stat_holidays_2024_25"))
        expect_named(mds_stat_holidays_2024_25, c("holiday_date", "day_of_week", "holiday"), ignore.order = TRUE)
        expect_s3_class(mds_stat_holidays_2024_25, "tbl_df")
        expect_type(mds_stat_holidays_2024_25$day_of_week, "character")
        expect_type(mds_stat_holidays_2024_25$holiday, "character")
        expect_s3_class(mds_stat_holidays_2024_25$holiday_date, "Date")
        expect_equal(nrow(mds_stat_holidays_2024_25), 11)
        expect_equal(ncol(mds_stat_holidays_2024_25), 3)
        expect_equal(nrow(filter(mds_stat_holidays_2024_25, day_of_week == "Wednesday")), 2)
        expect_equal(nrow(filter(mds_stat_holidays_2024_25, day_of_week == "Monday")), 6)
      }
    )
  )
)
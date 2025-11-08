test = list(
  name = "e3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(exists("mds_2024_2025"))
        expect_s4_class(mds_2024_2025, "Interval")
        expect_equal(substr(as.character(mds_2024_2025),start = 1, stop = 10), "2024-09-01")
        expect_equal(substr(as.character(mds_2024_2025),start = 17, stop = 26), "2025-06-30")
        expect_equal(substr(as.character(mds_2024_2025),start = 12, stop = 14), "UTC")
        expect_equal(mds_2024_2025@.Data, 26092800)
      }
    )
  )
)
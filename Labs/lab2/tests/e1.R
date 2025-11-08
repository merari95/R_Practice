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
        expect_true(exists("bc_covid19_confirmed_3_months"))
        expect_named(bc_covid19_confirmed_3_months, c("date", "confirmed_cases"), ignore.order = TRUE)

        # HIDDEN
        expect_s3_class(bc_covid19_confirmed_3_months, "data.frame")
        expect_type(bc_covid19_confirmed_3_months$confirmed_cases, "double")
        expect_s3_class(bc_covid19_confirmed_3_months$date, "Date")
        expect_equal(nrow(bc_covid19_confirmed_3_months), 93)
        expect_equal(ncol(bc_covid19_confirmed_3_months), 2)
        expect_equal(sum(as.numeric(bc_covid19_confirmed_3_months$confirmed_cases)), 14246272)
      }
    )
  )
)
test = list(
  name = "e11",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.data.frame(first_five_measurements))
        expect_equal(nrow(first_five_measurements), 5)
        expect_equal(ncol(first_five_measurements), 2)
        expect_true(c("conc") %in% colnames(first_five_measurements))
        expect_true(c("uptake") %in% colnames(first_five_measurements))
        expect_equal(length(colnames(first_five_measurements)), 2)
        expect_equal(round(sum(first_five_measurements$conc)), 1370)
      }
    )
  )
)
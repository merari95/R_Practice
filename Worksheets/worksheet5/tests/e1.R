test = list(
  name = "e1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        answer <- fixed
        expect_true(is.data.frame(answer))
        expect_equal(nrow(answer), 8)
        expect_equal(ncol(answer), 2)
        expect_equal(paste(tolower(sort(colnames(answer))), collapse = ""), 'citiesprovince')
        expect_equal(paste(tolower(sort(unique(answer$province))), collapse = ""), 'abbcsk')
        expect_equal(paste(tolower(sort(unique(answer$cities))), collapse = ""), 'calgaryedmontonkelownalethbridgereginasaskatoonvancouvervictoria')
      }
    )
  )
)
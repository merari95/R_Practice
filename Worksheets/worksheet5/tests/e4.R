test = list(
  name = "e4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        answer <- engine_summary
        expect_true(is.data.frame(answer))
        expect_equal(nrow(answer), 6)
        expect_equal(ncol(answer), 3)
        expect_equal(paste(tolower(sort(colnames(answer))), collapse = ""), 'avg_seatsengineplanes')
        expect_equal(round(as.numeric(sum(answer$avg_seats))), 365)
        expect_equal(round(as.numeric(sum(answer$planes))), 3322)
      }
    )
  )
)
test = list(
  name = "e7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_equal(nrow(airports_factor), 1458)
        expect_equal(ncol(airports_factor), 8)
        expect_equal(paste(tolower(sort(colnames(airports_factor))), collapse = ""), 'altdstfaalatlonnametztzone')
        expect_equal(round(as.numeric(sum(airports_factor$alt, na.rm = TRUE))), 1460064)
        expect_true(is.character(tzone_levels))
        expect_equal(length(tzone_levels), 9)
        expect_equal(digest(paste(tolower(sort(colnames(tzone_levels))), collapse = "")), '2f88e16c4f21bfcb290b2a8288c05bd0')
      }
    )
  )
)
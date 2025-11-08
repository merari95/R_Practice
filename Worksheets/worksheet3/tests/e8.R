test = list(
  name = "e8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_equal(nrow(airports_mainland), 1435)
        expect_equal(ncol(airports_mainland), 8)
        expect_equal(paste(tolower(sort(colnames(airports_mainland))), collapse = ""), 'altdstfaalatlonnametztzone')
        expect_equal(round(as.numeric(sum(airports_mainland$alt, na.rm = TRUE))), 1445986)
        expect_true(is.factor(airports_mainland$tzone))
        expect_true(is.character(tzone_levels_mainland))
        expect_equal(length(tzone_levels_mainland), 7)
        expect_equal(digest(paste(tolower(sort(colnames(tzone_levels_mainland))), collapse = "")), '2f88e16c4f21bfcb290b2a8288c05bd0')
      }
    )
  )
)
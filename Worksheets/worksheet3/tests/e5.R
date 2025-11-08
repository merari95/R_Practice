test = list(
  name = "e5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_equal(nrow(ottawa_region), 214)
        expect_equal(ncol(ottawa_region), 7)
        expect_equal(paste(tolower(sort(colnames(ottawa_region))), collapse = ""), 'categorylang_knownlanguagemost_at_homemost_at_workmother_tongueregion')
        expect_equal(round(as.numeric(sum(ottawa_region$mother_tongue, na.rm = TRUE))), 1265230)
      }
    )
  )
)
test = list(
  name = "e4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.data.frame(unnested_penguins))
        expect_equal(nrow(unnested_penguins), 6)
        expect_equal(ncol(unnested_penguins), 3)
        expect_equal(paste(tolower(sort(colnames(unnested_penguins))), collapse = ""), 'islandsexspecies')
        expect_equal(paste(tolower(sort(unique(unnested_penguins$island))), collapse = ""), 'biscoedreamtorgersen')
        expect_equal(paste(tolower(sort(unique(unnested_penguins$sex))), collapse = ""), 'femalemale')
      }
    )
  )
)
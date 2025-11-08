test = list(
  name = "e3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.data.frame(nested_penguins))
        expect_true(is.list(nested_penguins$data))
        expect_true(is.character(nested_penguins$species))
        expect_equal(nrow(nested_penguins), 3)
        expect_equal(ncol(nested_penguins), 2)
        expect_equal(paste(tolower(sort(colnames(nested_penguins))), collapse = ""), 'dataspecies')
        expect_equal(nested_penguins$species[2], 'Chinstrap')
        expect_equal(ncol(nested_penguins$data[[1]]), 2)
        expect_equal(nrow(nested_penguins$data[[1]]), 2)
        expect_equal(nested_penguins$data[[2]]$sex[2], 'male')
      }
    )
  )
)
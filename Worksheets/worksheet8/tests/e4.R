test = list(
  name = "e4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        fun_body <- paste(deparse(body(get_rectangle2)), collapse = "")
        answer <- get_rectangle2(penguins, body_mass_g > 3000, species:island)
        expect_true(is.data.frame(answer))
        expect_equal(nrow(answer), 331)
        expect_equal(ncol(answer), 2)
        expect_equal(paste(tolower(sort(colnames(answer))), collapse = ""), 'islandspecies')
        expect_true(str_detect(fun_body, "\\{[ ]*\\{[ ]*row_filter[ ]*\\}[ ]*\\}"))
        expect_true(str_detect(fun_body, "select(...)"))
      }
    )
  )
)
test = list(
  name = "e5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        fun_body <- paste(deparse(body(select_and_arrange)), collapse = "")
        answer <- select_and_arrange(penguins, body_mass_g, species:island, sex)
        expect_true(is.data.frame(answer))
        expect_equal(nrow(answer), 344)
        expect_equal(ncol(answer), 3)
        expect_equal(paste(tolower(sort(colnames(answer))), collapse = ""), 'islandsexspecies')
        expect_true(str_detect(fun_body, "\\{[ ]*\\{[ ]*sort_by[ ]*\\}[ ]*\\}"))
        expect_true(str_detect(fun_body, "select(...)"))
      }
    )
  )
)
test = list(
  name = "e3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        fun_body <- paste(deparse(body(nest_and_count)), collapse = "")
        answer <- nest_and_count(penguins, species)
        expect_true(is.data.frame(answer))
        expect_equal(nrow(answer), 3)
        expect_equal(ncol(answer), 3)
        expect_equal(paste(tolower(sort(colnames(answer)[1:2])), collapse = ""), 'dataspecies')
        expect_equal(sum(as.numeric(answer[[3]])), 344)
        expect_true(str_detect(fun_body, ":="))
      }
    )
  )
)
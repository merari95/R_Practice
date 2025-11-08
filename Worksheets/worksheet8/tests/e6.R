test = list(
  name = "e6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        # TESTS
        fun_body <- paste(deparse(body(have_fun)), collapse = "")
        expect_true(str_detect(fun_body, "[.]{3}|\\{[ ]*\\{[ ]*"))
      }
    )
  )
)
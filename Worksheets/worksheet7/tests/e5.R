test = list(
  name = "e5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.data.frame(nested_reg_lang))
        expect_equal(paste(tolower(sort(colnames(nested_reg_lang))), collapse = ""), 'categorydata')
        expect_true(is.list(nested_reg_lang$data))
        expect_true(is.character(nested_reg_lang$category))
        expect_equal(nrow(nested_reg_lang), 3)
        expect_equal(ncol(nested_reg_lang), 2)
        expect_equal(nested_reg_lang$category[3], 'Official languages')
        expect_equal(ncol(nested_reg_lang$data[[1]]), 6)
        expect_equal(nrow(nested_reg_lang$data[[1]]), 2345)
        expect_equal(nested_reg_lang$data[[2]]$mother_tongue[2], 75)
      }
    )
  )
)
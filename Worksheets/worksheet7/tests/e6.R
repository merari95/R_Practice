test = list(
  name = "e6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.data.frame(nested_reg_lang_hw_cor))
        expect_equal(paste(tolower(sort(colnames(nested_reg_lang_hw_cor))), collapse = ""), 'categorycor_home_workdata')
        expect_true(is.list(nested_reg_lang_hw_cor$data))
        expect_true(is.character(nested_reg_lang_hw_cor$category))
        expect_true(is.numeric(nested_reg_lang_hw_cor$cor_home_work))
        expect_equal(nrow(nested_reg_lang_hw_cor), 3)
        expect_equal(ncol(nested_reg_lang_hw_cor), 3)
        expect_equal(nested_reg_lang_hw_cor$category[3], 'Official languages')
        expect_equal(ncol(nested_reg_lang_hw_cor$data[[1]]), 6)
        expect_equal(nrow(nested_reg_lang_hw_cor$data[[1]]), 2345)
        expect_equal(nested_reg_lang_hw_cor$data[[2]]$mother_tongue[2], 75)
        expect_equal(nested_reg_lang_hw_cor$cor_home_work[1], 0.772, tolerance = 0.001)
        expect_equal(nested_reg_lang_hw_cor$cor_home_work[3], 0.989, tolerance = 0.001)
      }
    )
  )
)
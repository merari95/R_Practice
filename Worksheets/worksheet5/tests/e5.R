test = list(
  name = "e5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        # TESTS
        answer <- gentoo_sex_size
        expect_true(is.data.frame(answer))
        expect_equal(nrow(answer), 2)
        expect_equal(ncol(answer), 3)
        expect_equal(paste(tolower(sort(colnames(answer))), collapse = ""), 'mean_body_mass_gmean_flipper_length_mmsex')
        expect_equal(round(as.numeric(sum(answer$mean_body_mass_g))), 10165)
        expect_equal(round(as.numeric(sum(answer$mean_flipper_length_mm))), 434)
      }
    )
  )
)
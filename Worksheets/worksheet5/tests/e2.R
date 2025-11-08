test = list(
  name = "e2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        answer <- penguins_less_nas
        expect_true(is.data.frame(answer))
        expect_equal(nrow(answer), 342)
        expect_equal(ncol(answer), 8)
        expect_equal(paste(tolower(sort(colnames(answer))), collapse = ""), 'bill_depth_mmbill_length_mmbody_mass_gflipper_length_mmislandsexspeciesyear')
        expect_equal(paste(round(as.numeric(sum(answer$body_mass_g))), collapse = ""), '1437000')
      }
    )
  )
)
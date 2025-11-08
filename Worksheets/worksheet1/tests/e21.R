test = list(
  name = "e21",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_equal(nrow(female_penguins), 165)
        expect_equal(ncol(female_penguins), 8)
        expect_equal(paste(tolower(sort(colnames(female_penguins))), collapse = ""), 'bill_depth_mmbill_length_mmbody_mass_gflipper_length_mmislandsexspeciesyear')
        expect_equal(round(as.numeric(sum(female_penguins$bill_length_mm, na.rm = TRUE))), 6946)
      }
    )
  )
)
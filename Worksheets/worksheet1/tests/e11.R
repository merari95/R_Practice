test = list(
  name = "e11",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_equal(nrow(penguins_csv), 344)
        expect_equal(ncol(penguins_csv), 8)
        expect_equal(paste(tolower(sort(colnames(penguins_csv))), collapse = ""), 'bill_depth_mmbill_length_mmbody_mass_gflipper_length_mmislandsexspeciesyear')
        expect_equal(round(as.numeric(sum(penguins_csv$bill_length_mm, na.rm = TRUE))), 15021)
      }
    )
  )
)
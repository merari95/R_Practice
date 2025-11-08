test = list(
  name = "e23",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_equal(nrow(smallest_penguin), 1)
        expect_equal(ncol(smallest_penguin), 8)
        expect_equal(paste(tolower(sort(colnames(smallest_penguin))), collapse = ""), 'bill_depth_mmbill_length_mmbody_mass_gflipper_length_mmislandsexspeciesyear')
        expect_equal(smallest_penguin$species[1], 'Chinstrap')
        expect_equal(smallest_penguin$bill_length_mm[1], 46.9)
      }
    )
  )
)
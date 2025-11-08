test = list(
  name = "e22",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_equal(nrow(ordered_by_size), 344)
        expect_equal(ncol(ordered_by_size), 8)
        expect_equal(paste(tolower(sort(colnames(ordered_by_size))), collapse = ""), 'bill_depth_mmbill_length_mmbody_mass_gflipper_length_mmislandsexspeciesyear')
        expect_equal(round(as.numeric(sum(ordered_by_size$bill_length_mm, na.rm = TRUE))), 15021)
        expect_equal(ordered_by_size$species[1], 'Chinstrap')
        expect_equal(ordered_by_size$bill_length_mm[1], 46.9)
      }
    )
  )
)
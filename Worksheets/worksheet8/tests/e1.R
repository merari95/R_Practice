test = list(
  name = "e1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        fun_body <- paste(deparse(body(get_rectangle)), collapse = "")
        answer <- get_rectangle(penguins, body_mass_g > 3000, species:island)
        answer2 <- get_rectangle(penguins, body_mass_g > 3000)
        expect_true(is.data.frame(answer))
        expect_equal(nrow(answer), 331)
        expect_equal(ncol(answer), 2)
        expect_equal(paste(tolower(sort(colnames(answer))), collapse = ""), 'islandspecies')
        expect_equal(nrow(answer2), 331)
        expect_equal(ncol(answer2), 8)
        expect_equal(paste(tolower(sort(colnames(answer2))), collapse = ""), 'bill_depth_mmbill_length_mmbody_mass_gflipper_length_mmislandsexspeciesyear')
        expect_true(str_detect(fun_body, "\\{[ ]*\\{[ ]*row_filter[ ]*\\}[ ]*\\}"))
        expect_true(str_detect(fun_body, "\\{[ ]*\\{[ ]*column_range[ ]*\\}[ ]*\\}"))
      }
    )
  )
)
test = list(
  name = "e4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.data.frame(full_core_flavours_and_vessls))
        expect_equal(nrow(full_core_flavours_and_vessls), 21)
        expect_equal(ncol(full_core_flavours_and_vessls), 3)
        expect_equal(paste(tolower(sort(colnames(full_core_flavours_and_vessls))), collapse = ""), 'flavournamevessel')
        expect_equal(paste(tolower(sort(unique(full_core_flavours_and_vessls$name))), collapse = ""), "alexiarmandanielflorenciagittujoelkatiemikequantifftomvaradavincenzo")
        expect_equal(paste(tolower(sort(unique(full_core_flavours_and_vessls$flavour))), collapse = ""), "chocolatecoconutdark chocolate/pistachio/vanilla combogreen tealemonmint chocolate chiporeopistachiosalted caramelsalted caramelstrawberryvanilla")
      }
    )
  )
)
test = list(
  name = "e1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.data.frame(flavours_and_vessls))
        expect_equal(nrow(flavours_and_vessls), 15)
        expect_equal(ncol(flavours_and_vessls), 3)
        expect_equal(paste(tolower(sort(colnames(flavours_and_vessls))), collapse = ""), 'flavournamevessel')
        expect_equal(paste(tolower(sort(unique(flavours_and_vessls$name))), collapse = ""), 'armanflorenciajoelmiketifftomvincenzo')
        expect_equal(paste(tolower(sort(unique(flavours_and_vessls$flavour))), collapse = ""), 'chocolatecoconutdark chocolate/pistachio/vanilla combogreen tealemonmint chocolate chiporeopistachiosalted caramelsalted caramelstrawberryvanilla')
      }
    )
  )
)
test = list(
  name = "e3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.data.frame(core_flavours_and_vessls))
        expect_equal(nrow(core_flavours_and_vessls), 4)
        expect_equal(ncol(core_flavours_and_vessls), 3)
        expect_equal(paste(tolower(sort(colnames(core_flavours_and_vessls))), collapse = ""), 'flavournamevessel')
        expect_equal(paste(tolower(sort(unique(core_flavours_and_vessls$name))), collapse = ""), 'joeltiff')
        expect_equal(paste(tolower(sort(unique(core_flavours_and_vessls$flavour))), collapse = ""), "chocolatedark chocolate/pistachio/vanilla combomint chocolate chipsalted caramel")
      }
    )
  )
)
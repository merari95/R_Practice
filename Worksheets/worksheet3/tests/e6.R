test = list(
  name = "e6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_equal(nrow(replaced_dash), 7490)
        expect_equal(ncol(replaced_dash), 7)
        expect_equal(paste(tolower(sort(colnames(replaced_dash))), collapse = ""), 'categorylang_knownlanguagemost_at_homemost_at_workmother_tongueregion')
        expect_equal(round(as.numeric(sum(replaced_dash$mother_tongue, na.rm = TRUE))), 23970555)
        expect_true(replaced_dash %>% 
                        filter(str_detect(region, "Ottawa")) %>% 
                        slice(1) %>% 
                        pull(region) %>% 
                        str_detect('Ottawa & Gatineau'))
        expect_true(replaced_dash %>% 
                        filter(str_detect(region, "Abbotsford")) %>% 
                        slice(1) %>% 
                        pull(region) %>% 
                        str_detect('Abbotsford & Mission'))
      }
    )
  )
)
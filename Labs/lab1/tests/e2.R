test = list(
  name = "e2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        # make sure solution is a character vector 
        # (it's supposed to be the name of a city)
        expect_equal(class(mandarin2), 'character')
      }
    )
  )
)
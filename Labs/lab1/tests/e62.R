test = list(
  name = "e62",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.5,
      code = {
        # make sure solution is a character vector 
        # (it's supposed to be the name of a Game of Thrones character)
        expect_equal(class(got_char_9), 'character')
      }
    )
  )
)
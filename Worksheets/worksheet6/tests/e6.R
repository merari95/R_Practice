test = list(
  name = "e6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        expect_true(is.list(str_replace_metadata))
        expect_equal(length(str_replace_metadata), 4)
        expect_equal(digest(str_replace_metadata[[1]]), '3b42e625431b8bd8f1a26ad5c059b07f')
        expect_equal(digest(str_replace_metadata[[2]]), '8a395f4a5b22092f40b61b114d23ae89')
        expect_equal(digest(str_replace_metadata[[3]]), '8f3c28696f8a5fcdb63446746b6e4c06')
        expect_equal(digest(str_replace_metadata[[4]]) , '6717f2823d3202449301145073ab8719')
      }
    )
  )
)
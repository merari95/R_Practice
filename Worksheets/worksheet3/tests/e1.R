test = list(
  name = "e1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        # TESTS
        # test 1_1
        expect_equal(class(answer_1), 'Date')
        expect_equal(digest(as.character(answer_1)), 'af34296507d90a47d83c0e6d7ccf528c')
        # test 1_2
        expect_equal(class(answer_2), 'Date')
        expect_equal(digest(as.character(answer_2)), '0dc3e72e7535e3d3378f7fee34e32da5')
        # test 1_3
        expect_equal(class(answer_3), 'Date')
        expect_equal(digest(as.character(answer_3)), '63b4cce8c63b1e73d428dc1f9dbd7600')
        # test 1_4
        expect_equal(class(answer_1), 'Date')
        expect_equal(length(answer_4), 2)
        expect_equal(digest(paste(sort(as.character(answer_4)), collapse="")), 'a81259f0cd6c9b59c1904963d15175e9')
        # test 1_5
        expect_equal(class(answer_5), 'Date')
        expect_equal(digest(as.character(answer_5)), '10626e8d4ecc62564ef221e9be42f4f1')
      }
    )
  )
)
test = list(
  name = "e61",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2.5,
      code = {
        # make sure small_matrix is a matrix
        expect_true('matrix' %in% class(small_matrix))
      }
    )
  )
)
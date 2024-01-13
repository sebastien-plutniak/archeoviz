test_that(".do_square_list: works", {
  res <- .do_square_list(square.size=100,
                  coords.min = 0, coords.max = 1000, 
                  square.list = factor(1:10), axes = "X")
  expect_equal(res, as.character(1:10))
})
 

test_that(".do_square_list: do not work 1", {
  res <- .do_square_list(square.size=100,
                         coords.min = 0, coords.max = 1000, 
                         square.list = factor(1:9), axes = "X")
  expect_equal(res, "")
})

test_that(".do_square_list: do not work 2", {
  res <- .do_square_list(square.size= 10,
                         coords.min = 0, coords.max = 1000, 
                         square.list = factor(1:10), axes = "X")
  expect_equal(res, "")
})


 
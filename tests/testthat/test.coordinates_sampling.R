test_that(".coordinates_sampling works", {
  
  df <- data.frame(coord1 = 1:10, coord2 = 11:20)
  res <- .coordinates_sampling(df=df, coord1="coord1", coord2="coord2", coord.out="coord.output", location.tag="fuzzy")
    
  expect_equal(dim(res), c(10, 4))
  expect_equal(res[1, 4], "fuzzy")
  expect_equal(sum(res$coord.output >= res$coord1), 10)
  expect_equal(sum(res$coord.output <= res$coord2), 10)
})

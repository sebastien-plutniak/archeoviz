test_that(".get_surface_model", {
  set.seed(1)
  df <- data.frame("layer" = c("A", "B"),
                   "x" = sample(seq_len(100), 100),
                   "y" = sample(seq_len(100), 100),
                   "z" = sample(seq_len(100), 100),
                   "layer_color" =  c("green", "blue"))
  
  res <- .get_surface_model(df, "layer", "A")
  
  expect_equal(length(res), 4)
  expect_equal(dim(res$z.matrix), c(100, 100))
  expect_equal(length(res$x), 100)
  expect_equal(length(res$y), 100)
  expect_equal(names(res), c("z.matrix", "x", "y", "color"))
  expect_equal(res$color, "green")
})

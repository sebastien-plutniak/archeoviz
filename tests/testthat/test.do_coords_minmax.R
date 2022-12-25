test_that(".do_coords_minmax", {

  res <- demo_objects_data(100)
  res$x <- res$xmin
  res$y <- res$ymin
  res$z <- res$zmin
  
  res <- .do_coords_minmax(res)
  
  expect_equal(typeof(res), "list")
  expect_equal(length(res), 6)
  expect_equal(names(res), c("xmin", "xmax", "ymin", "ymax", "zmin", "zmax"))
  expect_equal(c(sapply(res, typeof), use.names=F), rep("double", 6))
})

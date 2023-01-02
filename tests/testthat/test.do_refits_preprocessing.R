test_that(".do_refits_preprocessing", {

  objects <- demo_objects_data(100)
  refits <- demo_refits_data(100)
  
  objects$x <- objects$xmin
  objects$y <- objects$ymin
  objects$z <- objects$zmin
  
  res <- .do_refits_preprocessing(refits, objects)
  
  expect_equal(dim(res), c(6, 4))
  expect_equal(colnames(res), c("id", "x", "y", "z"))
  expect_true(res[1,1] == res[2,1])
})

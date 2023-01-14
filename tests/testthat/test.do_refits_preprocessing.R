test_that(".do_refits_preprocessing for 2D plots", {

  objects <- demo_objects_data(100)
  refits <- demo_refits_data(100)
  
  objects$x <- objects$xmin
  objects$y <- objects$ymin
  objects$z <- objects$zmin
  
  res <- .do_refits_preprocessing(refits, objects)
  
  res <- res$refits.2d
  
  expect_equal(dim(res), c(3, 8))
  expect_equal(colnames(res), c("from", "to", "x", "y", "z", "xend", "yend", "zend"))
})


test_that(".do_refits_preprocessing for 3D plots", {
  
  objects <- demo_objects_data(100)
  refits <- demo_refits_data(100)
  
  objects$x <- objects$xmin
  objects$y <- objects$ymin
  objects$z <- objects$zmin
  
  res <- .do_refits_preprocessing(refits, objects)
  res <- res$refits.3d
  
  expect_equal(dim(res), c(6, 9))
  expect_equal(colnames(res), c("from", "to", "x", "y", "z", "xend", "yend", "zend", "id.internal"))
  expect_true(res[1, ]$id.internal == res[2, ]$id.internal)
  expect_true(res[1, ]$x != res[2, ]$y)
})

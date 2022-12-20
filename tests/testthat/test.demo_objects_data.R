test_that("demo_objects_data", {

  res <- demo_objects_data(100)
  
  expect_equal(dim(res), c(100, 12))
  expect_equal(colnames(res), c("id", "square_x", "square_y", "xmin", "xmax", "ymin", "ymax", "zmin", "zmax", "layer", "object_type", "object_class_size"))
  
})

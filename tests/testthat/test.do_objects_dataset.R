test_that(".do_objects_dataset: simulated data", {
  ui.terms <- .load_interface_terms("fr")
  shinyOptions("ui.terms" = ui.terms)
    
  res <- .do_objects_dataset(demoData.n = 100)
  
  expect_equal(res$notif.text, "notif.objects.ok")
  expect_equal(dim(res$data), c(100, 20))
  expect_equal(colnames(res$data), c("id", "square_x", "square_y", "xmin", "xmax", "ymin", "ymax", "zmin", "zmax", "layer", "object_type", "object_class_size", "year", "object_lithic_type", "location_mode", "x", "y", "z", "square", "layer_color"))
  expect_equal(c(sapply(res$data[1, ], typeof), use.names=F),
               c("integer", "integer", "integer", "integer", "double", "integer", "double", "double", "logical", "integer", "character", "character", "integer", "character", "character", "integer", "integer", "double", "character", "integer"))
})

 
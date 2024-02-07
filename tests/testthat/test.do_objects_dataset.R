test_that(".do_objects_dataset: simulated data", {
  ui.terms <- .load_interface_terms("fr")
  shinyOptions("ui.terms" = ui.terms)
    
  res <- .do_objects_dataset(demoData.n = 100)
  
  expect_equal(res$notif.text, "notif.objects.ok")
  expect_equal(dim(res$data), c(100, 24))
  expect_equal(colnames(res$data), c("id", "square_x", "square_y", "xmin", "xmax", "ymin", "ymax", "zmin", "zmax", "layer", "object_type", "object_class_size", "year", "object_lithic_type", "location_mode", "x.fuzzy", "y.fuzzy", "z.fuzzy", "x", "y", "z", "fuzzy.sum", "xyz", "square"))
  expect_equal(c(sapply(res$data[1, ], typeof), use.names=F),
               c("integer", "integer", "integer", "integer", "integer", "integer", "integer",  "integer", "integer", "integer", "character", "character", "integer", "character", "character", "logical", "logical", "logical", "double", "double", "integer", "integer", "character", "character"))
})


test_that(".do_objects_dataset: no max coordinates", {
  ui.terms <- .load_interface_terms("fr")
  shinyOptions("ui.terms" = ui.terms)
  
  df <- demo_objects_data(100)
  df <- df[, ! colnames(df) %in% c("xmax", "ymax", "zmax")]
  
  res <- .do_objects_dataset(from.parameter.input = df)
  
  expect_equal(res$notif.text, "notif.objects.ok")
  expect_equal(dim(res$data), c(100, 24))
  expect_equal(colnames(res$data), c("id", "square_x", "square_y", "xmin", "ymin",  "zmin", "layer", "object_type", "object_class_size", "year", "object_lithic_type", "xmax", "ymax","zmax", "location_mode", "x.fuzzy", "y.fuzzy", "z.fuzzy", "x", "y", "z", "fuzzy.sum", "xyz", "square"))
  expect_equal(c(sapply(res$data[1, ], typeof), use.names=F),
               c( "integer", "integer", "integer", "integer", "integer", "integer", "integer", "character", "character", "integer", "character", "integer", "integer", "integer", "character", "logical", "logical", "logical", "double", "double", "integer", "integer", "character", "character"))
})



test_that(".do_objects_dataset: duplicated identifiers", {
  ui.terms <- .load_interface_terms("fr")
  shinyOptions("ui.terms" = ui.terms)
  
  df <- demo_objects_data(100)
  df[2, ]$id <- 1
  
  res <- .do_objects_dataset(from.parameter.input = df)
  
  expect_equal(res$notif.text, "notif.error.identifier")
  expect_equal(dim(res$data), c(100, 14))
})

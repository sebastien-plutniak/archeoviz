test_that("do_selection_table: xyz", {
  
  df <- .do_objects_dataset(demoData.n = 100)[[1]]
  xyz.data <- data.frame("x" = df[1, "x"], "y" = df[1, "y"], "z" = df[1, "z"])
  
  table.output <- .do_selection_table(df, xyz.data, dims = "xyz")
  table.output <- c(unlist(table.output))[[3]]
  
  target.object.type <- df[1, "object_type"]
  target.square.type <- df[1, "square"]
  
  expect_true( grepl(target.object.type, table.output))
  expect_true( grepl(target.square.type, table.output))
})


test_that("do_selection_table: xy", {
  
  df <- .do_objects_dataset(demoData.n = 100)[[1]]
  xyz.data <- data.frame("x" = df[1, "x"], "y" = df[1, "y"])
  
  table.output <- .do_selection_table(df, xyz.data, dims = "xy")
  table.output <- c(unlist(table.output))[[3]]
  
  target.object.type <- df[1, "object_type"]
  target.square.type <- df[1, "square"]
  
  expect_true( grepl(target.object.type, table.output))
  expect_true( grepl(target.square.type, table.output))
})

test_that("do_selection_table: yz", {
  
  df <- .do_objects_dataset(demoData.n = 100)[[1]]
  xyz.data <- data.frame("x" = df[1, "x"], "y" = df[1, "y"])
  
  table.output <- .do_selection_table(df, xyz.data, dims = "xy")
  table.output <- c(unlist(table.output))[[3]]
  
  target.object.type <- df[1, "object_type"]
  target.square.type <- df[1, "square"]
  
  expect_true( grepl(target.object.type, table.output))
  expect_true( grepl(target.square.type, table.output))
})

test_that("do_selection_table: xz", {
  
  df <- .do_objects_dataset(demoData.n = 100)[[1]]
  xyz.data <- data.frame("x" = df[1, "x"], "y" = df[1, "y"])
  
  table.output <- .do_selection_table(df, xyz.data, dims = "xy")
  table.output <- c(unlist(table.output))[[3]]
  
  target.object.type <- df[1, "object_type"]
  target.square.type <- df[1, "square"]
  
  expect_true( grepl(target.object.type, table.output))
  expect_true( grepl(target.square.type, table.output))
})



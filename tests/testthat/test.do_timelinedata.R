test_that(".do_timelinedata", {

  res <- demo_objects_data(100)
  res$square <- paste(res$square_x, res$square_y, sep="-")
  res <- .do_timelinedata(full.dataset = res)
  
  expect_equal(length(res), 3)
  expect_equal(res$notif.text, "notif.timeline.ok")
  expect_equal(names(res$data), c("square_x", "square_y", "year", "excavation"))
  expect_equal(c(sapply(res$data[, 3:4], typeof), use.names=F) , c("integer", "logical"))
})

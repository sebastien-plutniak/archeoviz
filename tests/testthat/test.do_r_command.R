test_that("do_r_command", {
  res <- .do_r_command(reactive.params = c("A", "B"),
                       refitting.df = list(data.frame()) )
  expect_equal(res, 
               "archeoViz(<span style=color:Darkblue;>objects.df</span>=data, , <span style=\"color: Darkblue;\"></span>=A, <span style=\"color: Darkblue;\"></span>=B)")
})
 

test_that(".term_switcher", {
   
  ui.terms <- list("test" = "test value")
  shinyOptions("ui.terms" = ui.terms)
  
  expect_equal(.term_switcher("test"), "test value")
})

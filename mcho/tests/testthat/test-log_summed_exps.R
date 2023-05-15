test_that("output is numeric", {
  expect_type(log_summed_exps(1:100), "double")
})


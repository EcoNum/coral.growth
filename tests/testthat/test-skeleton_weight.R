context("test-skeleton_weight")

test_that("a character variable in skeleton_weight()", {
  expect_error(skeleton_weight(buoyant_weight = "a", S = 35, T = 25,rho_aragonite = 2930))
})


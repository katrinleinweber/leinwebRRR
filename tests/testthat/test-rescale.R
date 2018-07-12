context("test-rescale.R")

test_that("rescaling works", {
    expect_equal(object = rescale(c(1, 2, 3)),
                 expected = c(0.0, 0.5, 1.0))
    expect_equal(rescale(c(1, 2, 3, 4, 5)),
                 c(0.00, 0.25, 0.50, 0.75, 1.00))
})

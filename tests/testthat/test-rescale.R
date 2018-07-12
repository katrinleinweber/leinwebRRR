context("test-rescale.R")

test_that("rescaling works, without overwriting the default", {
    expect_equal(rescale(c(1, 2, 3, 4, 5)),
                 c(0.00, 0.25, 0.50, 0.75, 1.00))
})

test_that("rescaling works with non-default arguments", {
    expect_equal(object = rescale(c(1, 2, 3),
                                  lower = 1,
                                  upper = 2),
                 expected = c(1.0, 1.5, 2.0))
    expect_equal(object = rescale(c(1, 2, 3),
                                  lower = 1,
                                  upper = 4),
                 expected = c(1.0, 2.5, 4.0))
})

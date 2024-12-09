test_that("secret_santa() won't assign a person to themself and everyone gives and receives gift", {
  for (chestnut in sample.int(10000, 300)) {
    expect_no_error(naughty_list <- secret_santa(letters, seed = !!chestnut))
    expect_true(all(naughty_list$gift_giver != naughty_list$gift_recipient))
    expect_true(all(letters %in% naughty_list$gift_giver))
    expect_true(all(letters %in% naughty_list$gift_recipient))
  }
})

test_that("secret_santa() warns if the same person appears twice in the list", {
  nice_list <- c(
    "Rudolph",
    "Dasher",
    "Dancer",
    "Prancer",
    "Vixen",
    "Comet",
    "Cupid",
    "Donner",
    "Blitzen",
    "Rudolph" # You again?!
  )
  expect_error(secret_santa(nice_list), "Non-unique names provided")
})

test_that("secret_santa() errors if there are 2 players", {
  nice_list <- c("Rudolph", "Dasher")
  expect_error(secret_santa(nice_list), "You need at least 3 players to play")
})

test_that("secret_santa() warns if there is three players", {
  nice_list <- c("Rudolph", "Dasher", "Prancer")
  expect_warning(secret_santa(nice_list), "It's not a secret with 3 players")
})

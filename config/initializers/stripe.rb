
Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}

require "stripe"
Stripe.api_key = "sk_test_xp6wrmUz73aXUdQb7XDZm7mt"

# Stripe::Charge.list()

# Stripe::Token.create(
#   :card => {
#     :number => "4242424242424242",
#     :exp_month => 8,
#     :exp_year => 2018,
#     :cvc => "314"
#   },
# )

# retrieve single charge
# Stripe::Charge.retrieve(
#   "ch_18atAXCdGbJFKhCuBAa4532Z",
# )

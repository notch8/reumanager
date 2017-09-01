
Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}

require "stripe"
Stripe.api_key = "sk_test_xp6wrmUz73aXUdQb7XDZm7mt"

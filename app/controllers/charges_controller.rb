class ChargesController < ApplicationController
  def index
  end

  def new
  end

  def create
    # Amount in cents
    @amount = 79500

    customer = Stripe::Customer.create(
    # :email => params[:stripeEmail],
    :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Pay To Register A New Grant',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end

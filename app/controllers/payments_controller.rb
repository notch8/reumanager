class PaymentsController < ApplicationController
  before_action :amount_to_be_charged
  before_action :set_description
  before_action :set_plan
  # before_action :authenticate_user!

  def new
  end

  def create
    fail
    customer = Stripe::Customer.create(
    :email => "test@notch8.com", #TODO get login working here current_user.email,
    :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Pay To Register A New Grant',
      :currency    => 'usd',
    )

    render text: "Success" # todo go to next page in sign up path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_payment_path
  end

  def thanks
  end

  private

    def set_description
      @description = "Basic Membership"
    end

    def amount_to_be_charged
      @amount = 2500
    end

    def set_plan
      @plan = 2500
    end
end

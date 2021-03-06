class OrdersController < ApplicationController

  def create
    @project = Project.find(params[:order][:project_id])

    @order = Order.create!(project: @project, amount: @project.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @project.name,
        amount: @project.price_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(@order),
      cancel_url: order_url(@order)
    )

    @order.update(checkout_session_id: session.id)
    @pages = Page.all
    @features = Feature.all
    @solicitation = @project.solicitations.find_by(status: "Accepted")
    render "projects/show"
  end

  def show
  @order = current_user.orders.find(params[:id])
  end



end

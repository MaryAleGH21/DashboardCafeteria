class DashboardsController < ApplicationController
  def index
    @coffee_in_month = Coffee.group_by_month(:created_at).count
    @coffee_by_month_quantity = Coffee.group_by_month(:created_at).sum(:amount)
  end
end
class DashboardsController < ApplicationController
  def index
    @coffee_in_month = Coffee.group_by_month(:created_at).count
  end
end

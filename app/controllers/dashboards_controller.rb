class DashboardsController < ApplicationController
  def index
    @sales_grouped_by_month = Coffee.group("strftime('%m-%Y', date_time)").order(date_time: :asc).order(created_at: :asc).sum(:amount)
  end
end

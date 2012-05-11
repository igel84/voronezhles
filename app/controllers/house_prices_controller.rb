#encoding: utf-8
class HousePricesController < ApplicationController
  before_filter :authorize

  def create
		@project = Project.find(params[:project_id])
		@project.house_prices << HousePrice.new(params[:house_price])
		@project.save

		redirect_to edit_project_path(@project)
  end


  def destroy
		@project = Project.find(params[:project_id])
		@project.house_prices.destroy(params[:id])
		@project.save

		redirect_to edit_project_path(@project)
  end
end

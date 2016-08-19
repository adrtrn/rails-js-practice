class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
    render json: @employees
  end

  def show
    @employee = Employee.find(params[:id])
    @badges = @employee.badges
    render :json => {employee: @employee, badges: @badges}
  end
end

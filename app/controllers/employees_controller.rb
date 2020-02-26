class EmployeesController < ApplicationController
    #before action is run before anything in this class occurs
    before_action :current_employee, only: [:show, :edit, :update]
    #Stores all employee in the instance varible @employees
    def index 
        @employees = Employee.all
    end

    def show
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create
        @employee = Employee.create(employee_params)
        redirect_to employee_path(@employee)
    end

    def edit

    end

    def update

    end

    #Only this class has access to these method underneath the private
    private
    #This method is to keep our code DRY when looking for a employee 
    def current_employee
        @employee = Employee.find(params[:id])
    end

    #strong params due to rails method needing to permit the params to true
    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
    end
end
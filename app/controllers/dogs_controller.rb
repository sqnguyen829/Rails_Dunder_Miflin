class DogsController < ApplicationController
    #before action is run before anything in this class occurs
    before_action :current_dog, only: [:show, :edit, :update, :destroy]
    #Stores all Dogs in the instance varible @dogs
    def index 
        @dogs = Dog.all
    end

    def show
    end

    #Only this class has access to these method underneath the private
    private
    #This method is to keep our code DRY when looking for a dog 
    def current_dog
        @dog = Dog.find(params[:id])
    end

    #strong params due to rails method needing to permit the params to true
    def dogs_params
        params.require(:dog).permit(:name, :breed, :age)
    end

end

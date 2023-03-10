class DogsController < ApplicationController
  def create
    # if
    # else
    #   render json: { message: "Sorry, you must be logged in to access the doggos."}
    # end
    dog = Dog.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed],
    )
    if dog.save
      render json: { message: "Dog created successfully" }, status: :created
    else
      render json: { errors: dog.errors.full_messages }, status: :bad_request
    end
  end
end

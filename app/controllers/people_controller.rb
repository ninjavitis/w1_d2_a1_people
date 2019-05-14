class PeopleController < ApplicationController
  def index
    @People = Person.all
  end

  ### Gets a record by ID
  def show
    @Person = Person.find(params[:id])
  end

  ### Create an instance of a Person
  def new
    @Person = Person.new
  end

  ### Create a new record in the DB taking in the parameters for a person
  def create
    @Person = Person.new(people_params)
    if @Person.save
      redirect_to people_path
    else
      render :new
    end
  end

  ### Get a person to edit by ID
  def edit
    @Person = Person.find(params[:id])
  end

  ### Edit the DB record for a Person
  def update
    @Person = Person.find(params[:id])
    if @Person.update(people_params)
      redirect_to people_path
    else
      render :edit
    end
  end

  def destroy
    Person.find(params[:id]).destroy
    redirect_to people_path
  end

  private

  def people_params
    params.require(:person).permit(:first_name, :last_name, :gender, :age, :status, :eye_color, :hair_color)
  end
end

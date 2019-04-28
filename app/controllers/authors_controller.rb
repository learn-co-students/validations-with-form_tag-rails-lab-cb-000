class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params) #create a new author with the params passed in

    if @author.save
      redirect_to author_path(@author) #if the author is saved direct to author path
    else
      render :new #otherwise redirect to new 
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end

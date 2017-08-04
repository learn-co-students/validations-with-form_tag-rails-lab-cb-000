class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
    render :show
  end

  def new
    @author = Author.new
    render :new
  end

  def create
    @author = Author.new(author_params)
    if !@author.valid?
      render :new
    else
      @author.save
      redirect_to author_path(@author.id)
    end
  end

  def edit
    @author = Author.find(params[:id])
    render :edit
  end

  def update
    @author.update(author_params)
    if !@author.valid?
      redirect_to author_path(@author.id)
    else
      erb :edit
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end

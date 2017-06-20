class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def edit
    @author = Author.find_by_id(params[:id])
  end

  def update
    @author = Author.find_by_id(params[:id])
    @author.update(author_params)
    redirect_to author_path(@author)
  end

  def show

    @author = Author.find_by_id(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.valid?
      @author.save
    redirect_to author_path(@author)

  else
    render :new
  end
  end

  def author_params
  params.permit(:name, :email, :phone_number)
  end
end

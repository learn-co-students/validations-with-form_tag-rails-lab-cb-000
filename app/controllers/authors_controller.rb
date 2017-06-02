class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      # persist params to database using @instance.save or just #save instance method
      @author.save
      # send user (redirects per rspec) to the show page?
      redirect_to author_path(@author)
    else
      # render the new page for author#new with @author.errors
      render :new

    end


  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end

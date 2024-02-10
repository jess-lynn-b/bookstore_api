class AuthorController < ApplicationController
  def index 
    @author = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def create 
    author = Author.create(author_params)
    redirect_to author_path
  end

  def update
    @author = Author.find(params[:id])
    @author.update author_params)

    redirect_to author_path(@author)
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    redirect_to author_path
  end

  private
  def author_params
    params.require(:author).permit(:title)
  end

end

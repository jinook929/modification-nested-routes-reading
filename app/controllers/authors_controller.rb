class AuthorsController < ApplicationController

  def show
    @author = Author.find_by_id(params[:id])
    redirect_to authors_path, alert: "Author not found." if @author.nil?
  end

  def index
    @authors = Author.all
  end

end

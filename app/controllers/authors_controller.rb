class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :update, :destroy]

  # GET /authors
  def index
    @authors = Author.all

    render jsonapi: @authors
  end

  # GET /authors/1
  def show
    render jsonapi: @author, include: ['books']
  end

  # POST /authors
  def create
    @author = Author.new(author_params)

    if @author.save
      render jsonapi: @author, status: :created, location: @author
    else
      render jsonapi: @author.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /authors/1
  def update
    if @author.update(author_params)
      render jsonapi: @author
    else
      render jsonapi: @author.errors, status: :unprocessable_entity
    end
  end

  # DELETE /authors/1
  def destroy
    @author.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      @author = Author.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def author_params
      params.require(:author).permit(:name)
    end
end

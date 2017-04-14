class UrlsController < ApplicationController

  def index
    @urls = Url.all

    render json: @urls
  end

  def show
    @url = Url.find(params[:id])

    render json: @url.page_content
  end

  def create
    @url = Url.create(url_params)

    if @url.save
      render json: @url, status: :created
    else
      render json: @url.errors, status: :unprocessable_entity
    end
  end

  def update
    @url = Url.find(params[:id])
    if @url.update(url_params)
      render json: @url
    else
      render json: @page_errors, status: :unprocessable_entity
    end

  end

  def destroy
    @url = Url.find(params[:id])
    @url.destroy
  end

  private



  def url_params
    params.require(:url).permit(:page_url)
  end




end

class UrlContentsController < ApplicationController

  # before_action :specific_url_content

  def index
    @url = Url.find(params[:url_id])
    @url_contents = @url.url_contents
    render json: @url_contents
  end

  def show
    @url = Url.find(params[:url_id])
    @url_content = @url.url_contents.find(params[:id])
    render json: @url_content
  end

  private

  # can write a method to call on specific url before action here - refactor

  def url_content_params
    params.require(:url_content).permit(:tag, :content, :url_id)
  end

end

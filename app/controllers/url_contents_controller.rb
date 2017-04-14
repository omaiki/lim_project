class UrlContentsController < ApplicationController

  def index
    @url_contents = UrlContent.all

    render json: @url_contents
  end

  def show
    @url_content = UrlContent.find(params[:id])

    render json: @url_content
  end


  private

  def url_content_params
    params.require(:url_content).permit(:content, :url_id)
  end


end

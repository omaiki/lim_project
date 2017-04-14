class UrlContentsController < ApplicationController

  def index
    # only index required
    @url_contents = UrlContent.all
  end

  def show
    @url_content = UrlContent.find(params[:id])
    render json: @url_content
  end

  private

  def url_content_params
    params.require(:url_content).permit(:tag, :content, :url_id)
  end

end

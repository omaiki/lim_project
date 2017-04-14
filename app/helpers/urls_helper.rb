module UrlsHelper

  def url_contents
    @url = Url.find(params[:id])
    render json: @url.url_contents
  end

end
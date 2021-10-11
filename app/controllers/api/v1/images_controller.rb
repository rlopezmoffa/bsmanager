class Api::V1::ImagesController < ApplicationController
  def index
    @images = Image.all
    render json: @images
  end

  def show
    @image = Image.find(params[:id])
    render json: @image
  end

  def get_pictures
    # url = 'http://localhost:3001'
    url = 'http://bsmanager.balomar.com'

    @images = Image.all
    # http://localhost:3000/api/v1/images/get_pictures
    pictures = @images.map do | image |
    {
      thumbnail: url + image.picture.thumb.url,
      small: url + image.picture.small.url,
      original:  url + image.picture.large.url
    }
    end
    render json: pictures
  end

end

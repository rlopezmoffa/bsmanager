class Api::V1::DocumentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @documents = Document.all
    render json: @documents
  end

  def show
    @document = Document.find(params[:id])
    render json: @document
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      render json: {msg: ' The document is successfully uploaded'}
    else
      render json: {user: @document.errors},status:unprocessable_entity
    end
  end

  def document_params
    params.permit(:title)
  end

end

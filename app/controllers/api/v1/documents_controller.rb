class Api::V1::DocumentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @documents = Document.all
    # render 'documents/index.json.jbuilder'
  end

  def get_all
    # http://localhost:3000/api/v1/documents/get_all
    @documents = Document.all
    render 'documents/get_all.json.jbuilder'
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

  def login
    pass = params[:password].to_s

    puts('---------------------------------------')
    puts(pass)


    if pass == '1234'
      render json: {auth: 'ok'}
    else
      render json: {auth: 'no ok'}
    end
  end

  def document_params
    params.permit(:title)
  end

end

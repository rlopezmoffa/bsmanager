class Api::V1::DocumentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @documents = Document.all
  end

  def get_all
    # http://localhost:3000/api/v1/documents/get_all
    json_array = Array.new
    @documents = Document.all
    @documents.each do | document |
      tmp = document.to_json(:include => :paragraphs)
      json_array.push(tmp)
    end
    render json: json_array
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

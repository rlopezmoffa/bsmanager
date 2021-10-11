class Api::V1::MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @messages = Message.all
    render json: @messages
  end

  def get_all
    @messages = Message.all
    render json: @messages
  end

  def show
    @messages = Message.find(params[:id])
    render json: @message
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      render json: {msg: ' The message is successfully uploaded'}
    else
      render json: {user: @message.errors},status:unprocessable_entity
    end
  end

  def set_message
    @message = Message.new(message_params)
    if @message.save
      render json: {msg: ' The message is successfully uploaded'}
    else
      render json: {user: @message.errors},status:unprocessable_entity
    end
  end

  def message_params
    params.permit(:name, :surname, :email, :title, :text)
  end

end

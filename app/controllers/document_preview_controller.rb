class DocumentPreviewController < ApplicationController
  def index
    @document = Document.find(params[:id])
  end
end

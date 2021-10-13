require 'test_helper'

class DocumentPreviewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get document_preview_index_url
    assert_response :success
  end

end

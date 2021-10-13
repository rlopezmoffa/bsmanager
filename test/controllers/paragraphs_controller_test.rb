require 'test_helper'

class ParagraphsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paragraph = paragraphs(:one)
  end

  test "should get index" do
    get paragraphs_url
    assert_response :success
  end

  test "should get new" do
    get new_paragraph_url
    assert_response :success
  end

  test "should create paragraph" do
    assert_difference('Paragraph.count') do
      post paragraphs_url, params: { paragraph: { document_id: @paragraph.document_id, text: @paragraph.text, title: @paragraph.title } }
    end

    assert_redirected_to paragraph_url(Paragraph.last)
  end

  test "should show paragraph" do
    get paragraph_url(@paragraph)
    assert_response :success
  end

  test "should get edit" do
    get edit_paragraph_url(@paragraph)
    assert_response :success
  end

  test "should update paragraph" do
    patch paragraph_url(@paragraph), params: { paragraph: { document_id: @paragraph.document_id, text: @paragraph.text, title: @paragraph.title } }
    assert_redirected_to paragraph_url(@paragraph)
  end

  test "should destroy paragraph" do
    assert_difference('Paragraph.count', -1) do
      delete paragraph_url(@paragraph)
    end

    assert_redirected_to paragraphs_url
  end
end

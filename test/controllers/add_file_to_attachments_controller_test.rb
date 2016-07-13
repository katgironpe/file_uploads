require 'test_helper'

class AddFileToAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_file_to_attachment = add_file_to_attachments(:one)
  end

  test "should get index" do
    get add_file_to_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_add_file_to_attachment_url
    assert_response :success
  end

  test "should create add_file_to_attachment" do
    assert_difference('AddFileToAttachment.count') do
      post add_file_to_attachments_url, params: { add_file_to_attachment: {  } }
    end

    assert_redirected_to add_file_to_attachment_url(AddFileToAttachment.last)
  end

  test "should show add_file_to_attachment" do
    get add_file_to_attachment_url(@add_file_to_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_file_to_attachment_url(@add_file_to_attachment)
    assert_response :success
  end

  test "should update add_file_to_attachment" do
    patch add_file_to_attachment_url(@add_file_to_attachment), params: { add_file_to_attachment: {  } }
    assert_redirected_to add_file_to_attachment_url(@add_file_to_attachment)
  end

  test "should destroy add_file_to_attachment" do
    assert_difference('AddFileToAttachment.count', -1) do
      delete add_file_to_attachment_url(@add_file_to_attachment)
    end

    assert_redirected_to add_file_to_attachments_url
  end
end

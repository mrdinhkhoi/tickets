require 'test_helper'

class TicketAttachmentsControllerTest < ActionController::TestCase
  setup do
    @ticket_attachment = ticket_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticket_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket_attachment" do
    assert_difference('TicketAttachment.count') do
      post :create, ticket_attachment: { image: @ticket_attachment.image, ticket_id: @ticket_attachment.ticket_id }
    end

    assert_redirected_to ticket_attachment_path(assigns(:ticket_attachment))
  end

  test "should show ticket_attachment" do
    get :show, id: @ticket_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticket_attachment
    assert_response :success
  end

  test "should update ticket_attachment" do
    patch :update, id: @ticket_attachment, ticket_attachment: { image: @ticket_attachment.image, ticket_id: @ticket_attachment.ticket_id }
    assert_redirected_to ticket_attachment_path(assigns(:ticket_attachment))
  end

  test "should destroy ticket_attachment" do
    assert_difference('TicketAttachment.count', -1) do
      delete :destroy, id: @ticket_attachment
    end

    assert_redirected_to ticket_attachments_path
  end
end

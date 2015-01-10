require 'test_helper'

class PdffilesControllerTest < ActionController::TestCase
  setup do
    @pdffile = pdffiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pdffiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pdffile" do
    assert_difference('Pdffile.count') do
      post :create, pdffile: { filename: @pdffile.filename, url: @pdffile.url }
    end

    assert_redirected_to pdffile_path(assigns(:pdffile))
  end

  test "should show pdffile" do
    get :show, id: @pdffile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pdffile
    assert_response :success
  end

  test "should update pdffile" do
    patch :update, id: @pdffile, pdffile: { filename: @pdffile.filename, url: @pdffile.url }
    assert_redirected_to pdffile_path(assigns(:pdffile))
  end

  test "should destroy pdffile" do
    assert_difference('Pdffile.count', -1) do
      delete :destroy, id: @pdffile
    end

    assert_redirected_to pdffiles_path
  end
end

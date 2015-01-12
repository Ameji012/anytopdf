require 'FileUtils'
class Pdffile < ActiveRecord::Base
  # after_create :create_pdf
  before_destroy :destroy_pdf

  # def create_pdf
  #   kit = PDFKit.new("http://" + url)
  #   file = kit.to_file(Rails.root + "app/assets/imgkit_temp/" + "#{filename}.pdf")
  #   send_file( file )
  # end

  def destroy_pdf
    FileUtils.rm(Rails.root + "app/assets/imgkit_temp/" + "#{filename}.pdf")
  end
end

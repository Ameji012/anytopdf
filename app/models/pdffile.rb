class Pdffile < ActiveRecord::Base
  after_create :create_pdf

  def create_pdf
    kit = PDFKit.new("http://" + url)
    file = kit.to_file(Rails.root + "app/assets/imgkit_temp/" + "#{filename}.pdf")

  end

end

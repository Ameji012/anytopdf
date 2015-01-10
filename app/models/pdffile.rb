class Pdffile < ActiveRecord::Base
  after_create :create_pdf

  def self.create_pdf
    kit = IMGKit.new('http://#{url}')
    filename = kit.to_file(Rails.root + "app/assets/imgkit_temp/" + "#{filename}.jpg")
  end
end

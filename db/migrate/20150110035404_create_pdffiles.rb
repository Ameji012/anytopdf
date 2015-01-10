class CreatePdffiles < ActiveRecord::Migration
  def change
    create_table :pdffiles do |t|
      t.string :url
      t.string :filename

      t.timestamps null: false
    end
  end
end

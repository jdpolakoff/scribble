class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.datetime :created_at
      t.references :post, foreign_key: true
    end
  end
end

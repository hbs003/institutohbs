class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.boolean :status, default: true
      t.string :category
      t.string :date

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :title
      t.string :content
      t.string :email

      t.timestamps
    end
  end
end

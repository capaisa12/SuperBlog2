class RemoveEmailFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :email, :string
  end
end

class AddBodyAndDescriptionToPosts < ActiveRecord::Migration[8.1]
  def change
    add_column :posts, :body, :text, default: 'default body text'
    add_column :posts, :description, :string, default: 'default description text'
  end
end

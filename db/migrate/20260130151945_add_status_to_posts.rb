class AddStatusToPosts < ActiveRecord::Migration[8.1]
  def change
    add_column :posts, :status, :integer

    add_index :posts, [ :title, :description, :updated_at ], order: { updated_at: :desc, title: :asc }, where: 'status = 1'
  end
end

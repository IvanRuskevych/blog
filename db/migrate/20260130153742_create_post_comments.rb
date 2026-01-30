class CreatePostComments < ActiveRecord::Migration[8.1]
  def change
    # materialized: true => потрібен для postgresql
    # create_view :post_comments, materialized: true

    # for sqlite
    create_view :post_comments
  end
end

class AddAuthorColumnToPost < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :author, foreign_key: true
  end
end

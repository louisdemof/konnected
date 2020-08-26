class AddCommentToSolicitation < ActiveRecord::Migration[6.0]
  def change
    add_column :solicitations, :comment, :string
  end
end

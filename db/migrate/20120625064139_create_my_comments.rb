class CreateMyComments < ActiveRecord::Migration
  def change
    create_table :my_comments do |t|
      t.text :comment
      t.references :postAssignment

      t.timestamps
    end
    add_index :my_comments, :postAssignment_id
  end
end

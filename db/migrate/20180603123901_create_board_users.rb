class CreateBoardUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :board_users do |t|
      t.integer :user_id
      t.integer :board_id
      t.boolean :approval, default: false
      t.string :comment
      t.integer :permission, default: 0

      t.timestamps
    end
    add_index :board_users, :board_id
    add_index :board_users, :user_id
  end
end
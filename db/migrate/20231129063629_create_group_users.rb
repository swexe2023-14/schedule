class CreateGroupUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :group_users do |t|
      t.references :users, null: false, foreign_key: true
      t.timestamps
    end
  end
end

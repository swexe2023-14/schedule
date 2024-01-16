class AddGroupPassToGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :group_pass, :string
  end
end

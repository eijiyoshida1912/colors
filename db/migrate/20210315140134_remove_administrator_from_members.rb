class RemoveAdministratorFromMembers < ActiveRecord::Migration[6.1]
  def change
    remove_column :members, :administrator, :boolean
  end
end

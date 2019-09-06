class RemoveIsAdminFromUserTable < ActiveRecord::Migration[6.0]
  def change
    def change

      remove_column :users, :isAdmin, :boolean
    end
  end
end

# frozen_string_literal: true

class RemoveIsAdminToUserTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :isAdmin, :boolean
  end
end

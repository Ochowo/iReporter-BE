# frozen_string_literal: true

class RemoveIsAdminFromUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :isAdmin, :boolean, default: false
  end
end

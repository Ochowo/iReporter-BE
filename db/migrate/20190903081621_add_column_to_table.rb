# frozen_string_literal: true

class AddColumnToTable < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :you, :string, default: 'blah'
  end
end

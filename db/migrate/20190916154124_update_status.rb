class UpdateStatus < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:incidents, :status, 'new')
  end
end

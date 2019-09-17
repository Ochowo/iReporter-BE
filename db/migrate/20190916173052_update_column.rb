class UpdateColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :incidents, :type, :incident_type
  end
end

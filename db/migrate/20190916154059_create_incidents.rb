class CreateIncidents < ActiveRecord::Migration[6.0]
  def change
    create_table :incidents do |t|
      t.string :type
      t.string :created_by
      t.string :location
      t.string :comment
      t.string :images
      t.string :status

      t.timestamps
    end
  end
end

class RemoveYouFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :you, :string  
  end
end

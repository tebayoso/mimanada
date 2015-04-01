class AddStatusToMimos < ActiveRecord::Migration
  def change
    add_column :mimos, :status, :integer
  end
end

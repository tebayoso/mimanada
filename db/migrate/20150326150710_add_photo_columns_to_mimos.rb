class AddPhotoColumnsToMimos < ActiveRecord::Migration
  def self.up
    add_attachment :mimos, :photo
  end

  def self.down
    remove_attachment :mimos, :photo
  end
end

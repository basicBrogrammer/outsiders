class AddHuntTypeToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :huntType, :string
  end
end

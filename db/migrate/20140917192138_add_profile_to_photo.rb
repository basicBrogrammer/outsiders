class AddProfileToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :profile, :boolean
  end
end

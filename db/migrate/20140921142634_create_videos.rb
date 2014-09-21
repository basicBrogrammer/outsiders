class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :movie_uid
      t.string :movie_name
      t.string :movie_embed
      t.string :summary
      t.string :city
      t.string :state
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end

class CreateVideos < ActiveRecord::Migration
  def up
    create_table :videos do |t|
      t.string :name
      t.text :code
      t.text :description

      t.timestamps
    end
  end

  def down
      drop_table :videos

  end
end

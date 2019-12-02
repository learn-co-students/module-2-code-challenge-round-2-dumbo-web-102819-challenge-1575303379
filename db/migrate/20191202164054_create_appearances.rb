class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.string :guest
      t.string :episode
      t.integer :rating

      t.timestamps
    end
  end
end

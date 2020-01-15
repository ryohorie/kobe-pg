class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :image
      t.string :belong_to
      t.string :message
      t.string :description
      t.string :twitter
      t.string :facebook
      t.string :web
      t.string :github
      t.string :place

      t.timestamps
    end
  end
end

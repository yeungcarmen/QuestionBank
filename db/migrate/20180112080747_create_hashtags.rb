class CreateHashtags < ActiveRecord::Migration[5.1]
  def change
    create_table :hashtags do |t|
      t.string :name
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end

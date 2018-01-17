class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :username
      t.string :fullname
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end

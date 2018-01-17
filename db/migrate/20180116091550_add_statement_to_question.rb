class AddStatementToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :statement, :string
  end
end

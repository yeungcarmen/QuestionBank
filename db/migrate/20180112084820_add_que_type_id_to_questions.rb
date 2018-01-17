class AddQueTypeIdToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :que_type, foreign_key: true
  end
end

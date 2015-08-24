class AddDueDateToLists < ActiveRecord::Migration
  def change
    add_column(:lists, :due_date, :datetime)
  end
end

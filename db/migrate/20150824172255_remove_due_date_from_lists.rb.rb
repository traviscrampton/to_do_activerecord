class RemoveDueDateFromLists < ActiveRecord::Migration
  def change
    remove_column(:lists, :due_date, :datetime)
  end
end

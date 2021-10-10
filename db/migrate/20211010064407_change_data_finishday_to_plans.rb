class ChangeDataFinishdayToPlans < ActiveRecord::Migration[6.1]
  def change
    change_column :plans, :finishday, :datetime
  end
end

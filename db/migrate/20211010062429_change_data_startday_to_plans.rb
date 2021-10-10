class ChangeDataStartdayToPlans < ActiveRecord::Migration[6.1]
  def change
    change_column :plans, :startday, :datetime
  end
end

class AddPlanmemoToPlans < ActiveRecord::Migration[6.1]
  def change
    add_column:plans,:planmemo,:string
  end
end

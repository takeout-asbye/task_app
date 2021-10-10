class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :title
      t.string :startday
      t.string :finishday
      t.string :allday

      t.timestamps
    end
  end
end

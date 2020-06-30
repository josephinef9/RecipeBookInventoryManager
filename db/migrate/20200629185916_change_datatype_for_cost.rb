class ChangeDatatypeForCost < ActiveRecord::Migration[6.0]
  def self.up
    change_table :stock_quantities do |t|
      t.change :cost, :integer
    end
  end

  def self.down
    change_table :stock_quantities do |t|
      t.change :cost, :float
    end
  end
end

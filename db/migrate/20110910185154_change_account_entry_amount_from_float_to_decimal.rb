class ChangeAccountEntryAmountFromFloatToDecimal < ActiveRecord::Migration
  def change
    change_column :account_entries, :amount, :decimal, :precision => 8, :scale => 2
  end
end

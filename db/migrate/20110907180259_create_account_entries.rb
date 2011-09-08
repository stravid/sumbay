class CreateAccountEntries < ActiveRecord::Migration
  def change
    create_table :account_entries do |t|
      t.float :amount
      t.string :description

      t.timestamps
    end
  end
end

class AddUserIdToAccountEntries < ActiveRecord::Migration
  def change
    add_column :account_entries, :user_id, :integer
  end
end

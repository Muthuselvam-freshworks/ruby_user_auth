class AddUnconfirmedEmailToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :unconfirmed_email, :string
    add_index :users, :unconfirmed_email, unique: true
  end
end

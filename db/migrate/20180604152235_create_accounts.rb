class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :bank_name
      t.string :iban
      t.string :account_holder
      t.string :BIC
      t.string :bank_address
      t.integer :cook_id

      t.timestamps
    end
  end
end

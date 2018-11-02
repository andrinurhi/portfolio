class CreateSendEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :send_emails do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end

class CreateTicketAttachments < ActiveRecord::Migration
  def change
    create_table :ticket_attachments do |t|
      t.integer :ticket_id
      t.string :image

      t.timestamps null: false
    end
  end
end

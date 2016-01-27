class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :from
      t.string :subject
      t.string :content

      t.timestamps null: false
    end
  end
end

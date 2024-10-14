class CreateDoubts < ActiveRecord::Migration[6.1]
  def change
    create_table :doubts do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :message
      t.timestamps
    end
  end
end

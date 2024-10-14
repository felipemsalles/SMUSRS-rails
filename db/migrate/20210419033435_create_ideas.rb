class CreateIdeas < ActiveRecord::Migration[6.1]
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :person
      t.text :message
      t.timestamps
    end
  end
end

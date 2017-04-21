class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :phone, :string

      t.timestamps
    end
  end
end

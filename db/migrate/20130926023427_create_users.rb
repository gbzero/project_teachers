class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :second_last_name
      t.references :course, index: true
      t.string :email
      t.string :encrypted_pass

      t.timestamps
    end
  end
end

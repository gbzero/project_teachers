class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :teacher, index: true
      t.references :course, index: true
      t.references :user, index: true
      t.date :date_post
      t.string :content

      t.timestamps
    end
  end
end

class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :semester
      t.references :major, index: true

      t.timestamps
    end
  end
end

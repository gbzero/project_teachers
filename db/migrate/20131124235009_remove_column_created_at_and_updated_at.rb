class RemoveColumnCreatedAtAndUpdatedAt < ActiveRecord::Migration
  def change
		remove_column :majors, :created_at
		remove_column :majors, :updated_at
		remove_column :abilities, :created_at
		remove_column :abilities, :updated_at
		remove_column :courses, :created_at
		remove_column :courses, :updated_at
		remove_column :schools, :created_at
		remove_column :schools, :updated_at
		remove_column :teachers, :created_at
		remove_column :teachers, :updated_at
  end
end

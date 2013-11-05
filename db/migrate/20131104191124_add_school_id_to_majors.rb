class AddSchoolIdToMajors < ActiveRecord::Migration
  def change
    add_reference :majors, :school, index: true
  end
end

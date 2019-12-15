class CreateJoinTableStudentSkill < ActiveRecord::Migration[6.0]
  def change
    create_join_table :students, :skills do |t|
      # t.index [:student_id, :skill_id]
      # t.index [:skill_id, :student_id]
    end
  end
end

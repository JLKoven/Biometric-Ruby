class ExerciseType < ApplicationRecord
  has_many :exercise_sessions
  belongs_to :user

  def self.for_page(page, current_user, page_limit=10)
#@exercise_programs = ExerciseProgram.where('exercise_programs.user_id = ?', current_user.id).limit(10).offset(@page.to_i * 10)
#@exercise_programs = ExerciseProgram.for_page(@page)
#    page_limit = 10
    where('exercise_types.user_id = ?', 
    current_user.id)
    .limit(page_limit)
    .offset(page.to_i * page_limit)
  end

end

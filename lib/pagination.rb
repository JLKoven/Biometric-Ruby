module Pagination
  #I know this is bad Ruby, it should be a model thing, not a view thing
  #sry
  #oh wait probably not even a model thing whoops
  #lol



#INCLUDE IS NOT EXTEND
  def for_page(page, current_user, page_limit=10)
#@exercise_programs = ExerciseProgram.where('exercise_programs.user_id = ?', current_user.id).limit(10).offset(@page.to_i * 10)
#@exercise_programs = ExerciseProgram.for_page(@page) #    page_limit = 10
#    where('general_stats.user_id = ?', current_user.id)
    where("#{self.table_name}.user_id = ?", current_user.id)
    .limit(page_limit)
    .offset(page.to_i * page_limit)
  end

  #because we include pagehelper in classes, we don't need to rewrite *.table_name

end

short-term goals:

weight_set should show the exercise type!!
-DONE

lol why are we showing user
-DONE

(maybe hide the excess info on date from the user)
-DONE

on 'create' (multiple pages), make sure the 'create' shows useful information (not in terms of the object's mem number thing)
-DONE


Make a lot of these things hyperlinks
-<td><%= link_to weight_set.exercise_session_id, exercise_sessions_path(:weight_set.exercise_session_id) %></td>
this isn't working :(
neither does
<td><%= link_to weight_set.exercise_session_id, exercise_sessions_path(@weight_set.exercise_session_id) %></td>
and
<td><%= link_to weight_set.exercise_session_id, weight_set.exercise_session_id %></td>
 leads to "undefined method 'to_model' for 1:Integer Did you mean?  to_yaml"
I think I need to alter the show...? no, maybe not. adding a .pry at the show only causes the /30 url to get invoked, not the .30
-DONE



sort by weight!! (on weight_set page)
sort by weight!! (on general page) or other params
everything that could realistically be desired as 'sortable' should be sortable

weights in kg OR lb (weights should accept decimal numbers)

reps maybe should use dropdown!

show weight_sets on exercise_session page

VARIANT INPUT
create from the weight_set!

'exercise program' is really not an intuitive term


medium-term goals:

-maybe we should add a set limit to how many entries show up on a page...?
-google 'pagination ruby on rails activerecord'
--pagination gem
--start at


-add 'compound view'

-add an 'import csv' option for users
-add an 'export csv' option for users

-clean up UI
--add prettier error handling
--add more links

long-term goals:

-implement 'strength per pound' tracker

-implement 'set goal' function
--future: maybe implement machine learning?

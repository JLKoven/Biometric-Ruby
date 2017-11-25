Quick todo:

1) Troubleshooting: if I
I] create a new type of exercise, and then
II] go to the sessions page, and either add a new session with newType, or edit an existing session to have newType
III] go to the exerciseType page, and delete this newType
IV] attempt to go to the sessions page
I receive the following message:
  BEGIN ERROR MESSAGE:
NoMethodError in ExerciseSessions#index
Showing /home/john/biometric/app/views/exercise_sessions/index.html.erb where line #23 raised:

undefined method `name' for nil:NilClass
Extracted source (around line #23):
21
22
23
24
25
26

      <tr>
        <td><%= exercise_session.date %></td>
        <td><%= exercise_session.exercise_type.name %></td>
        <td><%= exercise_session.exercise_program.name %></td>
        <td><%= exercise_session.user.email %></td>
        <td><%= link_to 'Show', exercise_session %></td>

Rails.root: /home/john/biometric

Application Trace | Framework Trace | Full Trace
app/views/exercise_sessions/index.html.erb:23:in `block in _app_views_exercise_sessions_index_html_erb___3796906742961664939_70237110229180'
app/views/exercise_sessions/index.html.erb:20:in `_app_views_exercise_sessions_index_html_erb___3796906742961664939_70237110229180'
Request

Parameters:
None
  END ERROR MESSAGE:


2) I want to try investigating to see if all exercise sessions created by one user are accessible/editable by everyone else (they shouldn't be. There should be some baseline exercises that everyone gets, then everyone has their own data for the schem)

3) when I edit a session, it goes to the bottom of the page. How do I stop this? I want entries displayed organized by their date, I think


Goals:

-maybe we should add a set limit to how many entries show up on a page...?

-clean up UI
--add prettier error handling
--add more links

-implement 'set goal' function
--future: maybe implement machine learning?

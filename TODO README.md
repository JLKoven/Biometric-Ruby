Quick todo: 

1) I notice when I add weights, I can 'add average'. That's sub-ideal! In fact, I'm not sure it's something that should be parsed in from the CSV? The idea is that it's automatically calculated by the prior 7 entires. 

2) I can edit fields such that I can give exercises and programs nonsense names. I don't think I like this! 

3) I can add to exercise session just fine. But when I add to 'general stats', I get an error 'that user does not exist' 
When I add to 'weight sets', I get 
ActiveModel::UnknownAttributeError in WeightSetsController#create
unknown attribute 'exercise_session' for WeightSet.

Extracted source (around line #28):
26
27
28
29
30
31
              
  # POST /weight_sets.json
  def create
    @weight_set = WeightSet.new(weight_set_params)

    respond_to do |format|
      if @weight_set.save

Rails.root: /home/john/biometric

Application Trace: app/controllers/weight_sets_controller.rb:28:in `create'

Goals: 

-clean up UI 
--add prettier error handling 
--add more links 

-implement 'database persistence'(?) 

-implement 'import CSV' 

-implement 'set goal' function 
--future: maybe implement machine learning? 

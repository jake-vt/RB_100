# The below shows a method calling two other methods with arrays being passed as arguments (line 19)
# note: remember that the parameters/variables listed in the 3 method definitions are distinct from those being called on line 19, which are the arrays themselves

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))
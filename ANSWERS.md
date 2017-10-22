# Q0: Why is this error being thrown?
we have not defined the pokemmon controller yet

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
the pokemon are being pulled from the seed sample defined in seeds.rb. the common factor between the pokemon is that they do not have a trainer

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
the line calls a method that takes in the id of the current pokemon displayed on the screen and passes it to the capture method in the pokemon controller which sets the trainer_id of the pokemon to the id of the current player who is logged in

# Question 3: What would you name your own Pokemon?
I would name it ranchgod. cuz he would be a bad bitch and they would call him ranch because he be dressing.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed a path into redirect_to. the path I passed needed the id of the trainer who that pokemon belonged to, because the pokemon you are damaging are not going to belong to the current_trainer, and each user has their own id.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
in application.html.erb at the end it renders layouts/_messages.html.erb which defines a method for showing an error pop up on the screen that can be exited or clicked away from.

# Give us feedback on the project and decal below!
i loved this project 
# Extra credit: Link your Heroku deployed app

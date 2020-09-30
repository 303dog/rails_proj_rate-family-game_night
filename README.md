# # README
# 
# Erase-after-completion
# 
#     *Controllers:
#             Users_controller.rb
#                     -guest log in/ only able to view, not post reviews or submit games
#                     -create user account and assign a :user_id
#                     -update/edit user info
#                     -display user info
#                     -delete user account
#                     -password protected
#             Reviews_controller.rb
#                     -create a new review and assign :review_id
#                     -update/edit existing reviews
#                     -display review
#                     -delete review
#                     -corresponds with a :user_id and a :game_id
#                     -choose which genre a game fits into  (drop dn menu?)
#                     -number of players allowed            (drop dn menu?)  
#                     -theme of game                        (drop dn menu?)  
#                     -user rating                          (1-5? stars?)
#             Games_controller.rb
#                     -create a new game entry
#                     -age group
#                     -How many players can play?
#                     -which O/S? 
#      
# 
#                          
#     *Models:
#             User.rb
#                     _has_secure_password
#                     -has_many :reviews
#                     -has_many :games
#             Review.rb
#                     -belongs_to :user
#                     -belongs_to :game 
#             Game.rb
#                     -has_many :reviews 
#                     -belongs_to :user
#       
#     *Views:
#             User-  
#                 -new.html.erb
#             ?   -edit.html.erb
#             ?   -show.html.erb
#             Review-
#                 -index.html.erb
#                 -new.html.erb
#                 -edit.html.erb
#                 -show.html.erb
#             Game-
#                 -index.html.erb
#                 -new.html.erb
#                 -edit.html.erb
#                 -show.html.erb
# 
# 
# SCHEMA*************
# 
#   create_table "users" do |t|
#     t.string   "username"
#     t.text     "password_digest
#   end
# 
#   create_table "reviews" do |t|
#     t.string   "summary"
#     t.integer  "rating" 
#     t.integer  "user_id"
#     t.integer  "game_id"
#   end
# 
#   create_table "games" do |t|
#     t.string   "label"
#     t.string   "genre"                                Need to add a "game summary" or "description"
#     t.string   "theme" 
#     t.integer  "number_of_players"
#     t.text     "title"   
#   end
# 


Rate which family games are fun for you and your family!  This app lets you create a user account and submit and rate which games you and your family have fun playing together. 

You can search games and read other user's reviews of games before you download them and you can leave your own review on games you have played with your family to help the community when deciding what to play next.

This application was created because I have always enjoyed the traditional family game night but in these modern days with the kids getting older and friends and family moving further and further away, it gets harder and harder to organize and schedule them.

The hope is that with help, we can build a growing list with reliable reviews of games and apps that are available across different platforms where game play is fun, challenging and interactive with one or two players or even multiple players of three plus or more!  I believe there are games of every genre and skill level out there just waiting to be discovered and shared and hopefully this is the place for that to happen!

Please log in and share the games you and your family and friends are currently enjoying and why.  Discover new games other users have submitted and share your thoughts on those as well!

I wish you the best and thanks for your support!



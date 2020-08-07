Requirements:
1 HTML page 
a note on components:
-Container components deal with managing state and class methods.
-presentation components: this.props

2 container components ( eventsContainer, commentsContainer )
EventInput
5 stateless components (EventList, Event, NavLinks, CommentCard, homepage)
3 routes (eventlist, eventform, event(1))
MUST
-make use of react-router
-use redux middleware to modify state
-use async actions and redux thunk middleware 
-You should be using fetch() within your actions to GET and POST data from your API - do not use jQuery methods

diagram link:
https://app.diagrams.net/#G1TYzHK0RLp5QKb4tPZUEsjAzWSkdJriYY

MODEL: Event
// belongs_to :user // :user_id - integer
:title
:description-string
:date-datetime
:time
:location
// :category ['art','music']

MODEL: User
has_many :events
:name
// :kind (organizer, user)
:email
:password(opt)
:location


app:lists events and allows users to add events, leave raitngs/comments..
User Stories:
Users should be able to...
-sign up/login (hard code user..)
- add events
- look up events
-  add comments/photos to events
- search through events
- have favorites


Sal is searching for local concerts in HTX.
He wants to see what shows are happening locally in houston, ALL THE TIME. He opens the app, scrolls through a list of all events currently happening in his area. He specifically is looking for art shows/open galleries. He uses the search feature to look for 'art' related events. He scrolls through the events, clicks on the one he's interested, and is given more info about that event. Yay! Sal wins.

Amy is a local up-and-coming musician.
She's trying to get more shows booked, and decided to host a show at her local bar. She opens myEvents, and clicks on the button to add in a new event. She lists her info. 

STRETCH GOALS: 
search bar
User model
-authentication
-can save events (a my events route)
Organizer model
-authentication
-can see events they've created.. maybe?
- when the event happens, it gets deleted from your 'schedule/running list'

integrate google cal api

integrate a map api..

- a suggestion engine.. that recommends you things based off of events you've been to




Event
belongs_to :user
:user_id - integer
:title, :date-datetime data, :time, :location, :description-string, :category

Users
has_many :accounts
:name, :password(opt), :location

Ideas.. UI:
more of a community app
users get to add local events
any user can also search local events by the category
users can see a list of all current events on the home page

validates_inclusion_of :kind, :in => ['deposit, 'withdrawal]

controllers > api > v1 (file structure)

a note on routes:
namespacing in routes.. ex: localhost:3000/api/v1/transaction

namespace :api do
    namespace :v1 do
        resources :events
    end
end
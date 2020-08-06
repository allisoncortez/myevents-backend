Requirements:
1 HTML page 
2 container components (EventsContainer, NavContainer, EventInput)
5 stateless components (NavBar, EventList, Event)
3 routes (eventlist, eventform, event(1))

-Container components deal with managing state and class methods.

MUST
make use of react-router
use redux middleware to modify state
use async actions and redux thunk middleware 
* You should be using fetch() within your actions to GET and POST data from your API - do not use jQuery methods



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
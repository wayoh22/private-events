# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
  {email: "john.doe@privatevents.com", password: "password", password_confirmation: "password"},
  {email: "rebecca.chawner@privatevents.com", password: "password", password_confirmation: "password"},
  {email: "anthony.roy@privatevents.com", password: "password", password_confirmation: "password"},
  {email: "ian.duncan@privatevents.com", password: "password", password_confirmation: "password"},
])

Event.create!([
  {title: "Metallica", location: "Madison Square Garden", creator_id: 1},
  {title: "Manchester City vs Chelsea", location: "Estádio do Dragāo", creator_id: 2},
  {title: "Javascript Global Summit", location: "Online", creator_id: 1},
  {title: "Suns vs Nuggets", location: "Pepsi Center", creator_id: 3},
  {title: "Dave Chappelle", location: "Radio City Music Hall", creator_id: 2},
  {title: "TAC Utah", location: "Park City", creator_id: 4},
  {title: "Dave Matthews Band", location: "Red Rocks Amphitheatre", creator_id: 3},
  {title: "Coding and Coffee - Risk Adjustment Coding", location: "Online", creator_id: 4},
  {title: "Islanders vs Lightning", location: "Nassau Coliseum", creator_id: 2},
  {title: "TAC Montana", location: "Big Sky", creator_id: 3}
])

Invitation.create!([
  {invitee_id: 4, event_id: 1},
  {invitee_id: 2, event_id: 1},
  {invitee_id: 3, event_id: 1},
  {invitee_id: 4, event_id: 2},
  {invitee_id: 3, event_id: 2},
  {invitee_id: 1, event_id: 2},
  {invitee_id: 1, event_id: 3},
  {invitee_id: 2, event_id: 3},
  {invitee_id: 3, event_id: 3},
  {invitee_id: 1, event_id: 4},
  {invitee_id: 2, event_id: 4},
  {invitee_id: 3, event_id: 4},
  {invitee_id: 1, event_id: 5},
  {invitee_id: 3, event_id: 5},
  {invitee_id: 4, event_id: 5},
  {invitee_id: 4, event_id: 6},
  {invitee_id: 2, event_id: 6},
  {invitee_id: 1, event_id: 6},
  {invitee_id: 2, event_id: 7},
  {invitee_id: 3, event_id: 7},
  {invitee_id: 1, event_id: 7},
  {invitee_id: 4, event_id: 8},
  {invitee_id: 1, event_id: 8},
  {invitee_id: 2, event_id: 8},
  {invitee_id: 3, event_id: 9},
  {invitee_id: 1, event_id: 9},
  {invitee_id: 4, event_id: 9},
  {invitee_id: 4, event_id: 10},
  {invitee_id: 2, event_id: 10},
  {invitee_id: 1, event_id: 10}
])
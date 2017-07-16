# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

TA.create(name: "anwar", email: "anwar@berkeley.edu", sid: 25573775)
TA.create(name: "paige", email: "paige@berkeley.edu", sid: 25573776)
Student.create(name: "devyn", email: "devyn@berkeley.edu", sid: 25573777)
Student.create(name: "saman", email: "saman@berkeley.edu", sid: 25573778)
Checkin.create(week: 0, user_sid: 25573775, buddy_sid: 25573776)
Checkin.create(week: 0, user_sid: 25573775, buddy_sid: 25573777)
Checkin.create(week: 0, user_sid: 25573776, buddy_sid: 25573777)
Checkin.create(week: 0, user_sid: 25573777, buddy_sid: 25573778)



theater1 = Theater.create(:name => "Sundance Kabuki Cinemas", :address => "1881 Post Street, San Francisco, CA", :num_of_rooms => 12)
## I am going to start with just one theater
room1 = Room.create(:room_number => 1, :screen => "regular", :num_of_seats => 50,:theater_id => 1)
room2 = Room.create(:room_number => 2, :screen => "regular", :num_of_seats => 50,:theater_id => 1)
room3 = Room.create(:room_number => 3, :screen => "regular", :num_of_seats => 50,:theater_id => 1)
# room4 = Room.create(:room_number => 4, :screen => "regular", :num_of_seats => 50,:theater_id => 1)
# room5 = Room.create(:room_number => 5, :screen => "regular", :num_of_seats => 50,:theater_id => 1)
# room6 = Room.create(:room_number => 6, :screen => "regular", :num_of_seats => 35,:theater_id => 1)
# room7 = Room.create(:room_number => 7, :screen => "regular", :num_of_seats => 35,:theater_id => 1)
# room8 = Room.create(:room_number => 8, :screen => "regular", :num_of_seats => 35,:theater_id => 1)
# room9 = Room.create(:room_number => 9, :screen => "regular", :num_of_seats => 35,:theater_id => 1)
# room10 = Room.create(:room_number => 10, :screen => "regular", :num_of_seats => 35,:theater_id => 1)
# room11 = Room.create(:room_number => 11, :screen => "3D", :num_of_seats => 60,:theater_id => 1)
# room12 = Room.create(:room_number => 12, :screen => "3D", :num_of_seats => 60,:theater_id => 1)
# room is pretty much equal to movie playing at theater right now
screening1 = Screening.create(:name => "The Lone Ranger", :time => 1300, :genre => "Action Adventure Western", :rating => "PG 13", :room_id => 1)
screening2 = Screening.create(:name => "The Lone Ranger", :time => 1600, :genre => "Action Adventure Western", :rating => "PG 13", :room_id => 1)
screening3 = Screening.create(:name => "The Lone Ranger", :time => 1900, :genre => "Action Adventure Western", :rating => "PG 13", :room_id => 1)
screening4 = Screening.create(:name => "The Lone Ranger", :time => 2205, :genre => "Action Adventure Western", :rating => "PG 13", :room_id => 1)

screening5 = Screening.create(:name => "Despicable Me 2", :time => 1645, :genre => "Animation", :rating => "PG", :room_id => 2)
screening6 = Screening.create(:name => "Despicable Me 2", :time => 2151, :genre => "Animation", :rating => "PG", :room_id => 2)

screening7 = Screening.create(:name => "The Heat", :time => 1320, :genre => "Comedy", :rating => "R", :room_id => 3)
screening8 = Screening.create(:name => "The Heat", :time => 1620, :genre => "Comedy", :rating => "R", :room_id => 3)
screening9 = Screening.create(:name => "The Heat", :time => 1920, :genre => "Comedy", :rating => "R", :room_id => 3)
screening10 = Screening.create(:name => "The Heat", :time => 2150, :genre => "Comedy", :rating => "R", :room_id => 3)


# four screenings for lone ranger in theather 1
def seed_tickets1
    @i = 1
  while @i < 51
    ticket= Ticket.create!(:seat_num => @i, :screening_id => 1)
    @i += 1
  end
end
seed_tickets1

def seed_tickets2
    @i = 1
  while @i < 51
    ticket= Ticket.create!(:seat_num => @i, :screening_id => 2)
    @i += 1
  end
end
seed_tickets2

def seed_tickets3
    @i = 1
  while @i < 51
    ticket= Ticket.create!(:seat_num => @i, :screening_id => 3)
    @i += 1
  end
end
seed_tickets3
def seed_tickets4
    @i = 1
  while @i < 51
    ticket= Ticket.create!(:seat_num => @i, :screening_id => 4)
    @i += 1
  end
end
seed_tickets4
def seed_tickets5
    @i = 1
  while @i < 51
    ticket= Ticket.create!(:seat_num => @i, :screening_id => 5)
    @i += 1
  end
end
seed_tickets5
def seed_tickets6
    @i = 1
  while @i < 51
    ticket= Ticket.create!(:seat_num => @i, :screening_id => 6)
    @i += 1
  end
end
seed_tickets6
def seed_tickets7
    @i = 1
  while @i < 51
    ticket= Ticket.create!(:seat_num => @i, :screening_id => 7)
    @i += 1
  end
end
seed_tickets7
def seed_tickets8
    @i = 1
  while @i < 51
    ticket= Ticket.create!(:seat_num => @i, :screening_id => 8)
    @i += 1
  end
end
seed_tickets8
def seed_tickets9
    @i = 1
  while @i < 51
    ticket= Ticket.create!(:seat_num => @i, :screening_id => 9)
    @i += 1
  end
end
seed_tickets9
def seed_tickets10
    @i = 1
  while @i < 51
    ticket= Ticket.create!(:seat_num => @i, :screening_id => 10)
    @i += 1
  end
end
seed_tickets10

#50 tickets for lone ranger with no price or user_id to be set later.

User.create(:first_name => "Bob", :last_name => "Robertson", :email => "bob@bob.com")
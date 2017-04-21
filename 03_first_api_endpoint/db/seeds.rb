require './lib/friend'

Friend.destroy_all

Friend.create!([
  {
    first_name: "Jon",
    last_name: "Snow",
    phone: "+1-613-555-0157"
  },
  {
    first_name: "Daenerys",
    last_name: "Targaryan",
    phone: "+44 1632 960903"
  },
  {
    first_name: "Tyrion",
    last_name: "Lannister",
    phone: "518-555-0184"
  }
])

puts "Created #{Friend.count} friends. Look how popular you are!"

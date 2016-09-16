

player1 = User.create(name: "Jess", email: "kim@kim.com", password: 12345, board_spots: 2)
player2 = User.create(name: "Jay", email: "jay@jay.com", password: 12345, board_spots: 1)
player3 = User.create(name: "Kim", email: "jess@jess.com", password: 12345, board_spots: 4)
player4 = User.create(name: "Sean", email: "sean@sean.com", password: 12345, board_spots: 3)

group1 = Group.create(name: "Team Supa Dupa Fly")

group1.users << player1
group1.users << player2
group1.users << player3
group1.users << player4


game1 = Game.create(name: "Pub Crawl 2016")
group1.games << game1

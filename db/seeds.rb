User.destroy_all
Tweet.destroy_all

USERS = [
  {
    first_name: "James",
    last_name: "Han",
    email: "james@aol.com",
    password: "test",
    image: "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/",
    role: true,
    course: "WDI"
  },
  {
    first_name: "Eugene",
    last_name: "Kwok",
    email: "eugene@aol.com",
    password: "test",
    image: "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/",
    role: true,
    course: "UXDI"
  },
  {
    first_name: "Albert",
    last_name: "Luo",
    email: "albert@aol.com",
    password: "test",
    image: "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/",
    role: true,
    course: "DSI"
  },
  {
    first_name: "Skyler",
    last_name: "Roh",
    email: "skyler@aol.com",
    password: "test",
    image: "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/",
    role: true,
    course: "DSI"
  },
  {
    first_name: "Bryan",
    last_name: "Mau",
    email: "bryan@aol.com",
    password: "test",
    image: "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/",
    role: true,
    course: "WDI"
  },
  {
    first_name: "Kevin",
    last_name: "Stock",
    email: "kevin@aol.com",
    password: "test",
    image: "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/",
    role: false,
    course: nil
  },
  {
    first_name: "Daniel",
    last_name: "Oh",
    email: "doh@aol.com",
    password: "test",
    image: "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/",
    role: false,
    course: nil
  },
  {
    first_name: "Sam",
    last_name: "Shih",
    email: "sam@aol.com",
    password: "test",
    image: "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/",
    role: false,
    course: nil
  }
]

TWEETS = [
  {
    content: "8-bit pork belly tousled book. Vape stumptown tbh.",
    user_id: 1
  },
  {
    content: "Viral tofu iceland forage, raw denim man bun ennui farm-to-table lomo",
    user_id: 2
  },
  {
    content: "Listicle pickled, hammock tilde next level messenger bag banh mi.",
    user_id: 3
  },
  {
    content: "8-bit pork belly tousled book. Vape stumptown tbh.",
    user_id: 4
  },
  {
    content: "Viral tofu iceland forage, raw denim man bun ennui farm-to-table lomo",
    user_id: 5
  },
  {
    content: "Listicle pickled, hammock tilde next level messenger bag banh mi.",
    user_id: 1
  },
  {
    content: "8-bit pork belly tousled book. Vape stumptown tbh.",
    user_id: 2
  },
  {
    content: "Viral tofu iceland forage, raw denim man bun ennui farm-to-table lomo",
    user_id: 3
  },
  {
    content: "Listicle pickled, hammock tilde next level messenger bag banh mi.",
    user_id: 4
  },
  {
    content: "8-bit pork belly tousled book. Vape stumptown tbh.",
    user_id: 5
  },
  {
    content: "Viral tofu iceland forage, raw denim man bun ennui farm-to-table lomo",
    user_id: 1
  },
  {
    content: "Listicle pickled, hammock tilde next level messenger bag banh mi.",
    user_id: 2
  },
  {
    content: "8-bit pork belly tousled book. Vape stumptown tbh.",
    user_id: 3
  },
  {
    content: "Viral tofu iceland forage, raw denim man bun ennui farm-to-table lomo",
    user_id: 4
  },
  {
    content: "Listicle pickled, hammock tilde next level messenger bag banh mi.",
    user_id: 5
  },
]

p User.create(USERS)
p Tweet.create(TWEETS)

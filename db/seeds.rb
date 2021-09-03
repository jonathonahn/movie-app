Actor.create!([
  {first_name: "Tom", last_name: "Hanks", known_for: "Forrest Gump", gender: "male", age: 65, movie_id: 1},
  {first_name: "Leonardo", last_name: "DiCaprio", known_for: "Titanic", gender: "male", age: 46, movie_id: 2}
])
Movie.create!([
  {title: "Saving Private Ryan", year: 1998, plot: "Captain John Miller (Tom Hanks) takes his men behind enemy lines to find Private James Ryan, whose three brothers have been killed in combat. Surrounded by the brutal realties of war, while searching for Ryan, each man embarks upon a personal journey and discovers their own strength to triumph over an uncertain future with honor, decency and courage.", director: nil, english: true},
  {title: "The Wolf of Wall Street", year: 2013, plot: "In 1987, Jordan Belfort (Leonardo DiCaprio) takes an entry-level job at a Wall Street brokerage firm. By the early 1990s, while still in his 20s, Belfort founds his own firm, Stratton Oakmont. Together with his trusted lieutenant (Jonah Hill) and a merry band of brokers, Belfort makes a huge fortune by defrauding wealthy investors out of millions. However, while Belfort and his cronies partake in a hedonistic brew of sex, drugs and thrills, the SEC and the FBI close in on his empire of excess.", director: nil, english: true},
  {title: "부산행", year: 2016, plot: "A man (Gong Yoo), his estranged daughter and other passengers become trapped on a speeding train during a zombie outbreak in South Korea.", director: "연상호", english: false}
])

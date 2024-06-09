class Elemanlar {
  static List<String> items = ['Brad Pitt', 'Leonardo DiCaprio', 'Tom Hanks', 'Robert De Niro', 'Johnny Depp', 'Meryl Streep', 'Denzel Washington', 'Anthony Hopkins', 'Julia Roberts', 'Charlize Theron', 'Morgan Freeman', 'Angelina Jolie', 'Nicole Kidman', 'Jack Nicholson', 'Kate Winslet', 'Sean Connery', 'Harrison Ford', 'Dustin Hoffman', 'Tom Cruise', 'Al Pacino', 'Cate Blanchett', 'Emma Stone', 'Joaquin Phoenix', 'Natalie Portman', 'Daniel Day-Lewis', 'Scarlett Johansson', 'Jennifer Lawrence', 'Samuel L. Jackson', 'Will Smith', 'Matthew McConaughey', 'Sandra Bullock', 'Christian Bale', 'Liam Neeson', 'Jodie Foster', 'Anne Hathaway', 'Matt Damon', 'Ben Affleck', 'Keanu Reeves', 'Rober Downey Jr.', 'Chris Hemsworth', 'Chris Evans', 'Chris Pratt', 'Mark Ruffalo', 'Hugh Jackman', 'Ryan Reynolds', 'Tom Hardy', 'Idris Elba', 'Margot Robbie', 'Gal Gadot', 'Emily Blunt', 'Amy Adams', 'Jessica Chastain', 'Viola Davis', 'Maggie Smith', 'Helen Mirren', 'Julianne Moore', 'Mila Kunis', 'Kristen Stewart', 'Emma Watson', 'Dwayne Johnson', 'Jason Statham', 'Vin Diesel', 'Sylvester Stallone', 'Arnold Schwarzenegger', 'Bruce Willis', 'Clint Eastwood', 'Mel Gibson', 'John Travolta', 'Samuel L. Jackson', 'Tommy Lee Jones', 'Denzel Washington', 'Halle Berry', 'Angelina Jolie', 'Jennifer Aniston', 'Cameron Diaz', 'Reese Witherspoon', 'Jessica Alba', 'Scarlett Johansson', 'Charlize Theron', 'Natalie Portman', 'Meryl Streep', 'Nicole Kidman', 'Jennifer Lawrence', 'Anne Hathaway', 'Cate Blanchett', 'Julia Roberts', 'Emma Stone', 'Mila Kunis', 'Kate Winslet', 'Amy Adams', 'Sandra Bullock', 'Angelina Jolie', 'Julianne Moore', 'Viola Davis'
];
  static int currentIndex = 0;

  static String getCurrentItem() {
    if (currentIndex >= items.length) {
      return 'Bitti!';
    } else {
      return ' ${items[currentIndex]}';
    }
  }

  static bool elemanlarBittiMi() {
    return currentIndex >= items.length;
  }

  static void nextItem() {
    currentIndex++;
  }
}

def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT a.name, sg.name FROM series AS s INNER JOIN authors AS a ON s.author_id = a.id INNER JOIN subgenres AS sg ON sg.id = s.subgenre_id"
end

def select_series_title_with_most_human_characters
  "SELECT s.title FROM characters AS c INNER JOIN series AS s ON c.author_id = s.author_id WHERE c.species = 'human' GROUP BY c.id ORDER BY COUNT(s.id) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT c.name, COUNT(b.id) FROM characters AS c INNER JOIN character_books AS cb ON c.id = cb.character_id INNER JOIN books AS b ON b.id = cb.book_id GROUP BY c.id ORDER BY COUNT(b.id) DESC"
end

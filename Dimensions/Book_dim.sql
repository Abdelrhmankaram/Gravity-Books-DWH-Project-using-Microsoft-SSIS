select ROW_NUMBER() OVER (ORDER BY b.book_id) AS book_key,
	   b.book_id,
       b.title,
	   b.isbn13,
	   bl.language_name,
	   b.num_pages,
	   b.publication_date,
	   p.publisher_name
from book b join book_language bl on b.book_id = bl.language_id
	 join publisher p on b.publisher_id = p.publisher_id;
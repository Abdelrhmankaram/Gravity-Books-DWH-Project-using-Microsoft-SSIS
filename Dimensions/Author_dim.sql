select ROW_NUMBER() OVER (ORDER BY author_id) AS author_key,
       author_id,
       author_name
from author;


select posts.title, comments.body
from posts,
     comments
where posts.id = comments.post_id;
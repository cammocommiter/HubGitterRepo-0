@posts = Post.joins("LEFT OUTER JOIN users ON users.id = posts.user_id").
              joins(:blog).select

String#scan
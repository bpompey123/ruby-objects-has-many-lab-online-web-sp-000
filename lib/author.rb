class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
#    @@post_count += 1
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post_by_name(name)
    post = Post.new(name)
    @posts << post
    post.author = self
#    @@song_count += 1
  end




end

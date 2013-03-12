class Blog < ActiveRecord::Base

  after_create :post_blog_to_twitter

  belongs_to :user
  has_many :comments

  validates :post, :presence => true, :length => {:in => 5..140}

  def comments_count
    Comment.where("blog_id = ?", id).count
  end

  def post_blog_to_twitter
    blog = Blog.last
    twitter_client = Twitter::Client.new(
      :oauth_token => blog.oauth_token,
      :oauth_token_secret => blog.oauth_token_secret
    )
    twitter_client.update(blog.post)
  end

end

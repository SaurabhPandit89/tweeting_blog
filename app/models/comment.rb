class Comment < ActiveRecord::Base

  belongs_to :blog
  belongs_to :user

  validates :blog_comment, :presence => true, :length => {:in => 5..140}

  def get_user_email
    User.where("id = ?", user_id).first.email
  end

end

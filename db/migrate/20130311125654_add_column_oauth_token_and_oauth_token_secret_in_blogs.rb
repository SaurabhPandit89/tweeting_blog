class AddColumnOauthTokenAndOauthTokenSecretInBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :oauth_token, :string
    add_column :blogs, :oauth_token_secret, :string
  end
end

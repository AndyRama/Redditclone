class Post < ApplicationRecord
  belongs_to :account
  belongs_to :community
  validates_presences_of :title, :body, :user_id, :community_id

end
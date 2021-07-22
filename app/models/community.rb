class Community < ApplicationRecord
  belongs_to :user
  validates_presence_of :url, :name, :bio
end

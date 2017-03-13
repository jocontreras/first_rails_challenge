class Comment < ApplicationRecord
  belongs_to :article
  validates :body, presence: true
  validates :article_id, presence: true

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :show}


end

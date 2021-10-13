class Document < ApplicationRecord
  has_many :paragraphs, dependent: :destroy
end

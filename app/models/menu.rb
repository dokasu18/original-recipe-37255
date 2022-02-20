class Menu < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :hour
  

  belongs_to :user
  has_one_attached :image
  has_many :steps, dependent: :destroy
  accepts_nested_attributes_for :steps, allow_destroy: true

  with_options presence: true do
    validates :title
    validates :advice_text
    validates :hour_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :food_first
    validates :spice
    validates :image
  end

end
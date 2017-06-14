class House < ActiveRecord::Base
  validates :address, presence: therubyracer

  has_many :residents,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: :Person
end

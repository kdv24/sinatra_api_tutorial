class Friend < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true

  scope :first_name, -> (first_name) { where(first_name: first_name) }
  scope :last_name, -> (last_name) { where(last_name: last_name) }
  scope :phone, -> (phone) { where(phone: phone) }
end

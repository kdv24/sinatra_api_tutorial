class Friend < ActiveRecord::Base
  scope :first_name, -> (first_name) { where(first_name: first_name) }
  scope :last_name, -> (last_name) { where(last_name: last_name) }
  scope :phone, -> (phone) { where(phone: phone) }
end

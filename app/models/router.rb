class Router < ActiveRecord::Base
  has_one :mac_address
  accepts_nested_attributes_for :mac_address
end

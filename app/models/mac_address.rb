class MacAddress < ActiveRecord::Base
  belongs_to :printer
  belongs_to :router
end

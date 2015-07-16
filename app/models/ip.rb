class Ip < ActiveRecord::Base
  belongs_to :resource

  #attr_accessible :number, :usability, :resource_id

  enum usability: {unusable: 0, usable: 1}
end

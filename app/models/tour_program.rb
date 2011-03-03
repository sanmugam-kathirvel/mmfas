class TourProgram < ActiveRecord::Base
  belongs_to :place
  belongs_to :headquator
end

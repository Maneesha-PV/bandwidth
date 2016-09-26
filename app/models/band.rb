class Band < ApplicationRecord
	belongs_to :user
	validate :if_overlapping_exist
	#before_save :if_overlapping_exist

	scope :in_range, -> range { where('(frequency_lower BETWEEN ? AND ?)', range.first, range.last) }
	scope :exclude_self, -> id { where.not(id: id) }
	private
	def if_overlapping_exist
		range = Range.new frequency_lower, frequency_upper
  	overlaps = Band.exclude_self(id).in_range(range)
  	overlap_error unless overlaps.empty?
  end
  def overlap_error
  	errors.add(:overlap_error, 'Band is alreday allocated. Choose another one.')
	end
	  #byebug


=begin
		 @bands = Band.all
	  @bands.each do |a|
	  	#byebug
	  	if a.frequency_upper>=frequency_lower
	  		 errors.add(:band,"not allowed")
	  	end
	  end
=end	
  SELECT_LIST = [100,150,200,250,300,350,400,450,500]
 end
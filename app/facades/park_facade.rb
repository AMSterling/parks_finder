class ParkFacade
  def self.search(keyword_string)
     @parks_by_state = ParkService.total_by_state(keyword_string).map do |data|
      @state_parks = Park.new(data)
    end
  end
end

class ParkFacade
  def self.search(state_code)
   @parks_by_state = ParkService.total_by_state(state_code).map do |data|
    @state_parks = Park.new(data)
    end
  end
end

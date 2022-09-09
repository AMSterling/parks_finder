class Park
  attr_reader :id,
              :full_name,
              :description,
              :direction_info,
              :standard_hours

  def initialize(data)
    @id = data[:id]
    @full_name = data[:fullName]
    @description = data[:description]
    @direction_info = data[:directionsInfo]
    @standard_hours = data[:operatingHours][0][:standardHours]
  end
end

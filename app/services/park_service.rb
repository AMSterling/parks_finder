class ParkService
  def self.total_by_state(keyword_string)
    response = conn.get("parks?stateCode=#{keyword_string}&")
    JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.conn
    Faraday.new(url: "https://developer.nps.gov/api/v1/") do |faraday|
      faraday.params['api_key'] = ENV['nps_api_key']
    end
  end
end

class SearchResults

  def members(state)
   # conn = Faraday.new(url: 'https://api.propublica.org') do |faraday|
   #   faraday.headers['X-API-Key'] = ENV["PROPUBLICA_API_KEY"]
   #   faraday.adapter Faraday.default_adapter
   # end
   #
   # response = conn.get("/congress/v1/members/house/#{state}/current.json")
   # json = JSON.parse(response.body, symbolize_names: true)
   json = PropublicaService.new.members_of_house(state)
   @members = json[:results].map do |member_data|
     Member.new(member_data)
   end
  end

end

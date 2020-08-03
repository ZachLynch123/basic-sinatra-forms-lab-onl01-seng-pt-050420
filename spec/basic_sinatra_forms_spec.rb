describe App do

  describe 'GET /newteam' do
    it 'sends a 200 status code' do
      get '/newteam'
      expect(last_response.status).to eq(200)
    end

   

  describe 'POST /team' do
    it 'does not return Sinatra error page' do
      visit '/newteam'

      click_button "Submit"
      expect(page).to_not have_text("Backtrace")
    end

   
end

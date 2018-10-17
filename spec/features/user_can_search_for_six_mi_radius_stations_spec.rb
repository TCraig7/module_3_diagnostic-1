require 'rails_helper'

feature "User can make a search" do
  it "for electric and propane stations within a 6 mile radius" do
    visit "/"
    # When I visit "/"
    fill_in :q, with: "80203"
    # And I fill in the search form with 80203 (Note: Use the existing search form)
    click_on "Locate"
    # And I click "Locate"
    expect(current_path).to eq("/search")
    # Then I should be on page "/search"
    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    within(first(".station")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".address")
      expect(page).to have_css(".fuel types")
      expect(page).to have_css(".distance")
      expect(page).to have_css(".access times")
    end
    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end

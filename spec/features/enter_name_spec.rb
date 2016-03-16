RSpec.feature "0. User Entry", type: :feature do

  scenario "Users enter names and page displays names" do
    sign_in_and_play
    expect(page).to have_content 'Misa vs. Pete'
  end
end

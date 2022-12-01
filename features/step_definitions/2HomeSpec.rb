Then(/^should be able to visualize the tittle "(.*)"$/) do |something|
    expect(page).to have_content(something)
end
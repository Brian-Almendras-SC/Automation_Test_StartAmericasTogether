Given('I click in the option {string}') do |string|
    xpath = '//*[@id="root"]/div[2]/header/div[2]/div/button[3]'
    find(:xpath, xpath).click;
  end
  
  When('I find {string}') do |string|
    page.find('span', text: string,match: :first).hover
    sleep(5)
  end
  
  Then('I click over Detalles') do
    puts "5"
  end
  
  Then('Show details page about this event') do
    pending # Write code here that turns the phrase above into concrete actions
  end
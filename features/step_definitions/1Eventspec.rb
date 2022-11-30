  When('I find {string}') do |string|
    page.find('span', text: string,match: :first).hover
    #puts "ha"
  end
  
  #Then('I click over Detalles') do
    #click_button("Detalles_Edited By Automated Test")
    #xpath = '//*[@id="root"]/div[2]/div[1]/div/div[1]/div[2]/div[18]/div/div[2]/div/button[2]'
    #find(:xpath, xpath).click;
  #end
Then("Press the {string} button of card {string}") do |buttonName, eventName|
  action=buttonName +"_"+ eventName
  action1 = driver.find_elements_by_class_name(action)
  #~·sleep(50)
  #action=buttonName +"_"+ eventName
  action1.click();
end

Then('should show te tittle {string}') do |string|
    expect(page).to have_content(string)
    #page.find('b', text: "Edited By Automated Test")
end
  When('And The {string} page is displayed ') do |string|
    expect(page).to have_content("EVENTOS VIGENTES")

  end
  
  #Then('I click over Detalles') do
    #click_button("Detalles_Edited By Automated Test")
    #xpath = '//*[@id="root"]/div[2]/div[1]/div/div[1]/div[2]/div[18]/div/div[2]/div/button[2]'
    #find(:xpath, xpath).click;
  #end
Then("Press the {string} button of card {string}") do |buttonName, eventName|
  action=buttonName +"_"+ eventName
  #action1 = driver.find_elements_by_class_name(action)
  #~·sleep(50)
  #action=buttonName +"_"+ eventName
  scroll_to(find(:button,name: action, match: first))
  
  #puts res
  #res=find_button(name: action)
  #find(:button,name: "Detalles_♪ Feria musicial ♪♪").click
end

Then('should show te tittle {string}') do |string|
    expect(page).to have_content(string)
    #page.find('b', text: "Edited By Automated Test")
end
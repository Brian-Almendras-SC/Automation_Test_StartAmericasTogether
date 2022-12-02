Given('I am on the Start Americas homepage') do
    page.driver.browser.manage.window.maximize
    visit('/')
  end
  
  When('I enter the required fields as show below') do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
      when "Nombre:"
          fill_in 'username', :with => value
      when "Apellido:"
        fill_in 'lastname', :with => value
      when "Email:"
        fill_in 'email', :with => value
      when "Phone:"
        fill_in 'phone', :with => value
      when "Password:"
        fill_in 'password', :with => value
      when "Confirm Password:"
        fill_in 'confirmPassword', :with => value
      end
    end
  end
  
  Then('send my registration form') do
    xpath_base = '//*[@id="root"]/div[2]/div[1]/div/div/div[2]/div[3]/form/div[7]/button/span[1]'
    find(:xpath, xpath_base).click
  end
  
  

  Then('should redirect to Log In Page and show the title {string}') do | string |
    expect(page).to have_content(string)
  end
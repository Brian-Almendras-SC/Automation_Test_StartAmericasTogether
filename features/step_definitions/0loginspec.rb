Given('I visit the START AMERICAS TOGETHER') do
  visit ('/')
  end
  
Given('Press over option iniciar sesion') do 
  xpath = '//*[@id="root"]/div[2]/header/div[1]/div[3]/button'
  find(:xpath, xpath).click;
end

When('I enter the field User id and fill with my {string}') do |user|
  if (user=='lider')
    fill_in('email',:with => ENV['USERL']).native.send_keys(:return)
  elsif (user=='voluntario')
    fill_in('email',:with => ENV['USERV']).native.send_keys(:return)
  elsif (user=='coreteam')
    fill_in('email',:with => ENV['USERC']).native.send_keys(:return)
  end
  
end
  
When('I enter the field Contraseña and fill with my {string}') do |pass|       
  if (pass=='LPASS')
    fill_in('password',:with => ENV['PASS']).native.send_keys(:return)
  elsif (pass=='VPASS')
    fill_in('password',:with => ENV['PASS']).native.send_keys(:return)
  elsif (pass=='CPASS')
    fill_in('password',:with => ENV['PASS']).native.send_keys(:return)
  end
end

Then('I press the button {string}') do |string|
  xpath = '//*[@id="root"]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
  find(:xpath, xpath).click;
end

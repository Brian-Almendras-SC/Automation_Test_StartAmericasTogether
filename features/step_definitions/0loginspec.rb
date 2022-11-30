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

Given('I click in the option {string}') do |arg1|
  if(arg1 == "Iniciar Sesión")
    xpath = '//*[@id="root"]/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
  elsif(arg1 == "Unete a Start")
    xpath = '//*[@id="root"]/div[2]/div[1]/section/div[1]/div/div[2]/button[1]/span[1]'
  elsif(arg1 == "Proyectos")
    xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[2]/span/span'
  elsif(arg1 == "Eventos")
    xpath = '//*[@id="root"]/div[2]/header/div[2]/div/button[3]'
  elsif(arg1 == "Cuenta")
    xpath = '//*[@id="root"]/div[2]/header/div[2]/div/button[4]'
  elsif(arg1 == "Usuarios")
    xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[5]'
  end
  
  find(:xpath, xpath).click
end

Then('the bottom log in change for {string}') do |tittle|
  find('span', text: tittle)
end

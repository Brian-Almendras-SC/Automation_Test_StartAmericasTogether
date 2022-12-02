When(/^I press the "([^"]*)" button$/) do |arg1|
  if(arg1 == "Iniciar Sesión")
    xpath = '//*[@id="root"]/div[2]/header/div[1]/div[3]/button/span[1]'
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

When(/^Navigates to "([^"]*)" page$/) do|option|

  
  if (option == 'Proyectos')
    visit('https://testing-start.web.app/projects/categories')
  elsif (option == 'Eventos')
    visit('https://testing-start.web.app/eventos')
  elsif (option == 'Cuenta')
    visit('https://testing-start.web.app/cuenta')
  elsif (option == 'Usuarios')
    visit('https://testing-start.web.app/users')
    
  end
end

Then(/^The "([^"]*)" page is displayed$/) do|arg1|
  if(arg1 == "Proyectos")
    expect(page).to have_content("MEDIO AMBIENTE")
  elsif(arg1 == "Eventos")
    expect(page).to have_content("EVENTOS VIGENTES")
  elsif(arg1 == "Cuenta")
    expect(page).to have_content("Estoy disponible")
  elsif(arg1 == "home")
    expect(page).to have_content("Tus Próximos Eventos")
  end
end

Then(/^The "([^"]*)" form shows the tittle form$/) do |optionform|
    if(optionform == "Crear Evento")
        find(:xpath, '//*[@id="ModalFormCrearEvento"]/div/div/strong', :text => optionform)
    elsif (optionform == "Editar Evento")
        find(:xpath, '//*[@id="ModalFormCrearEvento"]/div/div/strong', :text => optionform)
        sleep(3)
    end
end

When(/^I enter the required event fields as show below$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
 case key
    when "Nombre Evento:"
      fill_in 'nombre_evento', :with => value
      @nameEvento = value
    when "Descripcion:"
      fill_in 'descripcion_evento', :with => value
    when "Lider:"
      select(value, :from => 'lider')
    when "Modalidad:"
      select(value, :from => 'modalidad_evento')
    when "Lugar:"
      fill_in 'lugar_evento', :with => value
    when "Hora inicio:"
      fill_in 'hora_inicio', :with => value
    when "Categoria:"
      select(value, :from => 'categoria')
    when "Proyecto:"
      select(value, :from =>  'proyecto')
    when "Hora inicio:"
      fill_in 'hora_inicio', :with => value
    when "Hora fin:"
      fill_in 'hora_fin', :with => value
    when "Fecha:"
      fill_in 'fecha_evento', :with => value	
    end
  end
end
When(/^Press the "([^"]*)" button$/) do |buttonName|
    if (buttonName == "Guardar Evento")
        xpath='//*[@id="ModalFormCrearEvento"]/div/form/div[11]/button[1]'
        find(:xpath, xpath).click
        sleep(1)
    elsif (buttonName == "Crear Evento")
        css='#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div:nth-child(1) > div.Menu-Bar-Evento > div.header-botones-eventos > button:nth-child(1)'
        find(:css, css).click
        sleep(1)
    elsif (buttonName == "Guardar Cambios")
        css=' #ModalFormEditEvento > div > form > div.CamposBotones > button.MuiButtonBase-root.MuiButton-root.MuiButton-text.botonActualizar'
        find(:css, css).click
        sleep(1)
    
    end
  
end

Then('I find to create the event {string} and press {string}') do |title, button|
  action=button+"_"+ title
  page.find(:button,:name => action,match: :first).click
end

Then('should was able to show title {string}') do |string|
  expect(page).to have_content(string)
end
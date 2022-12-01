 
  When('I click in the category projects called {string}') do |arg1|
    if(arg1 == "Medio Ambiente")
        xpath = '//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div[1]/div/div/a/button/div/h3'
      elsif(arg1 == "Desarrollo Sostenible")
        xpath = '//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div[2]/div/div/a/button/div/h3'
      elsif(arg1 == "Trabajo Social")
        xpath = '//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div[3]/div/div/a/button/div/h3'
      elsif(arg1 == "Empoderamiento")
        xpath = '//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div[4]/div/div/a/button/div/h3'
      elsif(arg1 == "Animales")
        xpath = '//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div[5]/div/div/a/button/div/h3'
      elsif(arg1 == "Comunidad")
        xpath = '//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div[6]/div/div/a/button/div/h3'
      elsif(arg1 == "Educación")
        xpath = '//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div[7]/div/div/a/button/div/h3'
      elsif(arg1 == "Otros")
        xpath = '//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div[8]/div/div/a/button/div/h3'
    end
    find(:xpath, xpath).click
  end
  
  Then('Should be able to see the active projects list of {string}') do |string|
    sleep 2
    expect(page).to have_content('Proyectos'+" "+string)
  end
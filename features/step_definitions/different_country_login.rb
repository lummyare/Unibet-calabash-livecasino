And(/^I entered Denmark account login credentials$/) do
  user = CREDENTIALS[:denmark_user]
  @loginPage.login(user[:username], user[:password],)
  sleep 1

end

And(/^I entered Finland account login credentials$/) do
  user = CREDENTIALS[:finland_user]
  @loginPage.login(user[:username], user[:password],)
  sleep 1
end

And(/^I entered Norway account login credentials$/) do
  user = CREDENTIALS[:norway_user]
  @loginPage.login(user[:username], user[:password],)
  sleep 1
end

And(/^I entered UK account login credentials$/) do
  user = CREDENTIALS[:uk_user]
  @loginPage.login(user[:username], user[:password],)
  sleep 1
end

And(/^I entered BelgiumNL account login credentials$/) do
  user = CREDENTIALS[:belgiumnl_user]
  @loginPage.login(user[:username], user[:password],)
  sleep 1
end

And(/^I entered Belgium account login credentials$/) do
  user = CREDENTIALS[:belgium_user]
  @loginPage.login(user[:username], user[:password],)
  sleep 1
end

And(/^I entered Swedish account login credentials$/) do
  user = CREDENTIALS[:sweden_user]
  @loginPage.login(user[:username], user[:password],)
  sleep 1
end

And(/^I entered Netherlands account login credentials$/) do
  user = CREDENTIALS[:netherland_user]
  @loginPage.login(user[:username], user[:password],)
  sleep 1
end

When(/^I log in successfully$/) do
  sleep 1
  check_element_exists "* marked:'LIVE CASINO'"
  flash "* marked:'LIVE CASINO'"
 sleep 1

end

Then(/^I can see the app in Danish language$/) do

  sleep 1
  touch "button marked:'image profile menu white'"
  sleep 2
  scroll("tableView", :down)
  sleep 1

  actual_txt = ["Log ud"]
  puts actual_txt
  displayed_txt = query "button index:7",:accessibilityLabel
  puts displayed_txt
  sleep 1
  if actual_txt != displayed_txt
    fail 'Not the right language text displayed'
  else
    puts 'App displayed the right language'
    sleep 3
  end




end

When(/^I click danish log out button$/) do
  touch 'button index:7'
  sleep 1
  touch "* marked:'Ja'"
  sleep 1
end

Then(/^I must see the landing page with Danish language$/) do
  sleep 1
  check_element_exists "* marked:'Opret konto'"
  check_element_exists "* marked:'Log ind'"

end

Then(/^I can see the app in finnish language$/) do
  sleep 1
  touch "button marked:'image profile menu white'"
  sleep 2
  scroll("tableView", :down)
  sleep 1

  actual_txt = ["Kirjaudu ulos"]
  puts actual_txt
  displayed_txt = query "button index:7",:accessibilityLabel
  puts displayed_txt
  sleep 1
  if actual_txt != displayed_txt
    fail 'Not the right language text displayed'
  else
    puts 'App displayed the right language'
    sleep 3
  end


end

When(/^I click finnish log out button$/) do
  touch 'button index:7'
  sleep 1
  touch "* marked:'Kyllä'"
  sleep 1
end

Then(/^I must see the landing page with Finnish language$/) do
  sleep 1
  check_element_exists "* marked:'Rekisteröidy'"
  check_element_exists "* marked:'Kirjaudu sisään'"
end

Then(/^I can see the app in Norwegian language$/) do
  sleep 1
  touch "button marked:'image profile menu white'"
  sleep 2
  scroll("tableView", :down)
  sleep 1

  actual_txt = ["Logg ut"]
  puts actual_txt
  displayed_txt = query "button index:7",:accessibilityLabel
  puts displayed_txt
  sleep 1
  if actual_txt != displayed_txt
    fail 'Not the right language text displayed'
  else
    puts 'App displayed the right language'
    sleep 3
  end
end

When(/^I click Norwegian log out button$/) do
  touch 'button index:7'
  sleep 1
  touch "* marked:'Ja'"
  sleep 1
end

Then(/^I must see the landing page with Norwegian language$/) do
  sleep 1
  check_element_exists "* marked:'Registrer deg'"
  check_element_exists "* marked:'Logg inn'"
end

Then(/^I can see the app in english language$/) do
  sleep 1
  touch "button marked:'image profile menu white'"
  sleep 2
  scroll("tableView", :down)
  sleep 1

  actual_txt = ["Log out"]
  puts actual_txt
  displayed_txt = query "button index:7",:accessibilityLabel
  puts displayed_txt
  sleep 1
  if actual_txt != displayed_txt
    fail 'Not the right language text displayed'
  else
    puts 'App displayed the right language'
    sleep 3
  end
end

When(/^I click english log out button$/) do
  touch 'button index:7'
  sleep 1
  touch "* marked:'Yes'"
  sleep 1
end

Then(/^I must see the landing page with english language$/) do
  sleep 1
  check_element_exists "* marked:'Register'"
  check_element_exists "* marked:'Log in'"
end

Then(/^I can see the app in Dutch language$/) do
  sleep 1
  touch "button marked:'image profile menu white'"
  sleep 2
  scroll("tableView", :down)
  sleep 1

  actual_txt = ["Log uit"]
  puts actual_txt
  displayed_txt = query "button index:7",:accessibilityLabel
  puts displayed_txt
  sleep 1
  if actual_txt != displayed_txt
    fail 'Not the right language text displayed'
  else
    puts 'App displayed the right language'
    sleep 3
  end
end

When(/^I click dutch log out button$/) do
  touch 'button index:7'
  sleep 1
  touch "* marked:'Ja'"
  sleep 1
end

Then(/^I must see the landing page with dutch language$/) do
  sleep 1
  check_element_exists "* marked:'Registreer'"
  check_element_exists "* marked:'Meld je aan'"
end

Then(/^I can see the app in french language$/) do
  sleep 1
  touch "button marked:'image profile menu white'"
  sleep 2
  scroll("tableView", :down)
  sleep 1

  actual_txt = ["Déconnexion"]
  puts actual_txt
  displayed_txt = query "button index:7",:accessibilityLabel
  puts displayed_txt
  sleep 1
  if actual_txt != displayed_txt
    fail 'Not the right language text displayed'
  else
    puts 'App displayed the right language'
    sleep 3
  end
end

When(/^I click French log out button$/) do
  touch 'button index:7'
  sleep 1
  touch "* marked:'Oui'"
  sleep 1
end

Then(/^I must see the landing page with French language$/) do
  sleep 1
  # check_element_exists "* marked:'S'inscrire'"
  check_element_exists "* marked:'Connectez-vous'"
end

Then(/^I can see the app in swedish language$/) do
  sleep 1
  touch "button marked:'image profile menu white'"
  sleep 2
  scroll("tableView", :down)
  sleep 1

  actual_txt = ["Logga ut"]
  puts actual_txt
  displayed_txt = query "button index:7",:accessibilityLabel
  puts displayed_txt
  sleep 1
  if actual_txt != displayed_txt
    fail 'Not the right language text displayed'
  else
    puts 'App displayed the right language'
    sleep 3
  end
end

When(/^I click swedish log out button$/) do
  touch 'button index:7'
  sleep 1
  touch "* marked:'Ja'"
  sleep 1
end

Then(/^I must see the landing page with swedish language$/) do
  sleep 1
  check_element_exists "* marked:'Registrera'"
  check_element_exists "* marked:'Logga in'"
end

Then(/^I can see the app in Netherland\-Dutch language$/) do
  sleep 1
  touch "button marked:'image profile menu white'"
  sleep 2
  scroll("tableView", :down)
  sleep 1

  actual_txt = ["Log out"]
  puts actual_txt
  displayed_txt = query "button index:7",:accessibilityLabel
  puts displayed_txt
  sleep 1
  if actual_txt != displayed_txt
    fail 'Not the right language text displayed'
  else
    puts 'App displayed the right language'
    sleep 3
  end
end

When(/^I click Dutch log out button$/) do
  touch 'button index:7'
  sleep 1
  touch "* marked:'Yes'"
  sleep 1
end

Then(/^I must see the landing page with Dutch language$/) do
  sleep 1
  check_element_exists "* marked:'Register'"
  check_element_exists "* marked:'Log in'"
end
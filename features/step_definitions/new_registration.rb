When(/^I click on continue button$/) do
  sleep 2
  touch "button marked:'Continue'"
  sleep 1
end

Then(/^I should navigate the registration form$/) do
  sleep 3
  check_element_exists "label marked:'Registration'"
  sleep 1
end

When(/^I scroll to bottom page and click continue without filling the form$/) do

  wait_poll({:until_exists => "webView css:'BUTTON' textContent:'Continue'", :timeout => 30}) do
    scroll("webView",:down)
  end
  touch "webView css:'BUTTON' textContent:'Continue'"
end

Then(/^Error messages should be populated on the empty text fields$/) do
  sleep 1
  check_element_exists("webView css:'div'{textContent CONTAINS 'Your e-mail is not valid'}")
sleep 2

end
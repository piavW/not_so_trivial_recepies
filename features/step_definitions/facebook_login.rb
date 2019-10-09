# When(/^member login with Facebook$/) do
#   # set the main window
#   main = page.driver.browser.window_handles.first
  
#   # to enable to click Facebook login button we must switch to Facebook iframe
#   facebok_iframe_name = find(:xpath, "//*[@id='fb-button-explore']/span/iframe")[:name]
#   page.driver.browser.switch_to.frame facebok_iframe_name 

#   # to enable to fill the Facebook creditional set popup windows 
#   # and then switch to popup window
#   popup = page.driver.browser.window_handles.last
#   page.driver.browser.switch_to.window(popup)

#   # fill form and click login button
#   fill_in("email", :with => "ehtermkrai_1570549278@tfbnw.net")
#   fill_in("pass", :with => "FakePassw0rd")
#   find(:id, "u_0_1").click()

#   # don't forget to switch to main window
#   page.driver.browser.switch_to.window(main)

# end
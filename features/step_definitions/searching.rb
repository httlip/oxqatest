Given('I go to oxstreet login page') do
  visit 'https://oxstreet.com/login'
end

Given('I signs in with correct credentials') do
  fill_in('email',:with => 'this is not my email, you need to change',wait: true)
  fill_in('password',:with => "this is not my pass, you need to change").send_keys(:enter)
  #find_button('Log in',match: :first).click
end

When('I search for {string}') do |string|
  fill_in('search',:with => string,wait: true).send_keys(:enter)
end

Then('I see the product {string} on the first page') do |string|
  expect(page).to have_content(string)
   page.save_screenshot('reports/screenshot.png')
end

Given('I go to oxstreet home page') do
  visit 'https://oxstreet.com'
  find('a[href$="signup"]').click
  find(:xpath,'//button[normalize-space()="Go to log in"]').click
  expect(page).to have_css('a[href$="forgot-password"]')
end
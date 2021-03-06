require "application_system_test_case"

class SendEmailsTest < ApplicationSystemTestCase
  setup do
    @send_email = send_emails(:one)
  end

  test "visiting the index" do
    visit send_emails_url
    assert_selector "h1", text: "Send Emails"
  end

  test "creating a Send email" do
    visit send_emails_url
    click_on "New Send Email"

    fill_in "Address", with: @send_email.address
    fill_in "Email", with: @send_email.email
    fill_in "Name", with: @send_email.name
    fill_in "Phone", with: @send_email.phone
    click_on "Create Send email"

    assert_text "Send email was successfully created"
    click_on "Back"
  end

  test "updating a Send email" do
    visit send_emails_url
    click_on "Edit", match: :first

    fill_in "Address", with: @send_email.address
    fill_in "Email", with: @send_email.email
    fill_in "Name", with: @send_email.name
    fill_in "Phone", with: @send_email.phone
    click_on "Update Send email"

    assert_text "Send email was successfully updated"
    click_on "Back"
  end

  test "destroying a Send email" do
    visit send_emails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Send email was successfully destroyed"
  end
end

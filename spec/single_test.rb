require_relative '../scripts/browserstack.rb'

describe "Core Strength Functionality" do
  it "can go to the site" do
    @driver.navigate.to "https://corestrengths.com"
    sleep 5
    expect(@driver.title).to eql("Core Strengths")
  end

  it "can go to overview" do
    @driver.navigate.to "https://corestrengths.com/events/overview/"
    sleep 5
    expect(@driver.title).to eql("Overview : Core Strengths")
  end

    context "Contact Us" do
        it "can navigate to the contact page" do
            @driver.navigate.to "https://corestrengths.com/contact-us/"
            sleep 5
            expect(@driver.title).to eql("Contact Us : Core Strengths")
        end

        it "can type a text in first name input" do
            pending "needs to figured out the type key"
            element = @driver.find_elements(:name, "Firstname")
            element.double_click
            element.send_keys "Hello World"
            element.submit
            sleep 5
        end

        it "can click send button" do
            pending "needs to work on the click"
            element = @driver.find_elements(type: "submit")
        end

    end

end

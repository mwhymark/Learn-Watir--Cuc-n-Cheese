class CheckoutPage
  include PageObject
  text_field(:order_name, :id=> 'order_name')
  text_field(:order_address, :id => 'order_address')
  text_field(:order_email, :id => 'order_email')
  select_list(:order_pay_type, :id=>'order_pay_type')
  button(:place_order, :value=> 'Place Order')

  def name=(name)
    self.order_name = name
  end

  def address=(address)
    self.order_address = address
  end

  def email=(email)
    self.order_email = email
  end

  def pay_type=(pay_type)
    self.order_pay_type =pay_type
  end

  def place_order_now
    self.place_order
  end

#
#  def name=(name)
#    @browser.text_field(:id => "order_name").set(name)
#  end
#
#  def address=(address)
#    @browser.text_field(:id => "order_address").set(address)
#  end

#  def email=(email)
#    @browser.text_field(:id => "order_email").set(email)
#  end

#  def pay_type=(pay_type)
#      @browser.select_list(:id => "order_pay_type").select(pay_type)
#  end

#  def place_order
#    @browser.button(:value => "Place Order").click
#  end
end
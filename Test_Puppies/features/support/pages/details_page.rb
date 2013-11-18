class DetailsPage
  include PageObject
  button(:adopt_me, :value =>'Adopt Me!')

  def adopt_me_now
    self.adopt_me
  end

end

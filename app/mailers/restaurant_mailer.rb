class RestaurantMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.restaurant_mailer.confirmation_creation.subject
  #
  def confirmation_creation(restaurant)
    @restaurant = restaurant

    mail to: @restaurant.user.email, subject: "#{@restaurant.name.capitalize} a bien été créé !"
  end
end

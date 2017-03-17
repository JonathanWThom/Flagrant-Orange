class SubscriptionsController < ApplicationController
  def create
    gb = Gibbon::Request.new
    gb.lists(ENV["MAILCHIMP_LIST_ID"]).members.create(body: {email_address: params[:email], status: "subscribed"})
    binding.pry

    add error conditions

    ## add flash message

    redirect_to contact_path
  end
end

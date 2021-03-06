class SubscriptionsController < ApplicationController
  def create
    gb = Gibbon::Request.new
    begin
        ## in the model??
      gb.lists(ENV["MAILCHIMP_LIST_ID"]).members.create(body: {email_address: email_params[:email], status: "subscribed"})
      flash[:notice] = "Subscribed!   X"
    rescue Gibbon::MailChimpError => e
      flash[:notice] = JSON.parse(e.raw_body)['title'] + "    X"
    end
    redirect_to contact_path
  end

  private
  def email_params
    params.permit(:email)
  end
end

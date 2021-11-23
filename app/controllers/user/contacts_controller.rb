class User::ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
  @contact = Contact.new(contact_params)
    if @contact.save
    ContactMailer.send_mail(@contact).deliver_now
    flash[:notice] = 'お問い合わせが完了しました！'
    redirect_to root_path
    else
    render :new
    end
  end
  
  private
  def contact_params
    params.require(:contact).permit(:email,:name,:phone_number,:subject,:message)
  end
end

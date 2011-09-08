class AccountEntriesController < ApplicationController
  def new
    @user = current_user
    @account_entry = AccountEntry.new
  end

  def create
    account_entry = AccountEntry.new(params[:account_entry])

    flash[:notice] = 'Your new entry was saved!'
    redirect_to :action => :new
  end
end

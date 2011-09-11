class AccountEntriesController < ApplicationController
  include ApplicationHelper # really? should it be in a helper?

  before_filter :parse_amount_parameter, :only => [:create, :update]
  before_filter :authorize

  def new
    @user = current_user
    @account_entry = @user.account_entries.new
  end

  def create
    @account_entry = current_user.account_entries.new(params[:account_entry])

    if @account_entry.valid?
      @account_entry.save

      flash[:notice] = 'Your new entry was saved!'
      redirect_to :action => :new
    else
      flash[:error] = 'The values you entered are not valid!'

      render :action => :new
    end
  end

  def index
    @account_entries = current_user.account_entries.all

    @sum = 0

    @account_entries.each do |entry|
      @sum += entry.amount
    end
  end

  private
  def parse_amount_parameter
    params[:account_entry][:amount] = parse_amount(params[:account_entry][:amount])
  end
end

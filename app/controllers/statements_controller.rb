class StatementsController < ApplicationController
  def index
    @account = Account.includes(:statements).find(params[:account_id])
  end

  def show
    @statement = Statement
      .includes(:transactions, :account)
      .find(params[:id])
  end

  def new
    @statement = Account.find(params[:account_id]).statements.new
  end

  def create
    @statement = Account.find(params[:account_id]).statements.create(statement_params)

    redirect_to @statement
  end

  def edit
    @statement = Statement.find(params[:id])
  end

  def update
    @statement = Statement.find(params[:id])

    if @statement.update(statement_params)
      redirect_to @statement
    else
      flash[:danger] = @statement.errors.full_messages
      render edit_statement_path(@statement)
    end
  end

  def destroy
    statement = Statement.find(params[:id])

    if statement.destroy
      redirect_to statements_path
    else
      flash[:danger] = statement.errors.full_messages
      redirect_to statement
    end
  end

  private
    def statement_params
      params.require(:statement).permit(:start_date, :end_date, :balance, transactions: [])
    end
end

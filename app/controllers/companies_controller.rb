class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    if current_user
      @company = Company.new(company_params)
      @company.save
      redirect_to companies_path, notice: 'Company was successfully created.'
    else
      redirect_to login_path, notice: "Must be logged in to create a company"
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :catch_phrase, :suffix)
  end

end

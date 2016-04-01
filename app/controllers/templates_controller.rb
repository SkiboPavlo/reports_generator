class TemplatesController < ApplicationController

  before_action :load_template, only: [:show, :edit, :generate_report, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @templates = Template.all
  end

  def new
    @template = Template.new
  end

  def edit
  end

  def show

  end

  def generate_report
    pdf = ReportPdf.new(@template.products)
    send_data pdf.render, filename: 'report.pdf', type: 'application/pdf'
  end

  def create
    @template = Template.new(template_params)

    if @template.save
      flash[:success] = 'Template created'
      redirect_to new_template_product_path(@template)
    else
      flash[:error] = @template.errors.full_messages
      redirect_to :back
    end
  end

  def update
    if @template.update_attributes(template_params)
      flash[:success] = 'Template updated'
      redirect_to templates_path
    else
      flash[:error] = @template.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    @template.destroy
    flash[:success] = 'Template destroyed'
    redirect_to :back
  end

  private

  def load_template
    @template = Template.find params[:id]
  end

  def template_params
    params.require(:template).permit(:name, :price, :count, :sum)
  end
end

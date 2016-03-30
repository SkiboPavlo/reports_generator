require 'prawn/table'
class ReportPdf < Prawn::Document

  def initialize(products)
    super()
    @products = products
    header
    table_content
  end

  def header
    #This inserts an image in the pdf file and sets the size of the image
  end

  def table_content
    # This makes a call to product_rows and gets back an array of data that will populate the columns and rows of a table
    # I then included some styling to include a header and make its text bold. I made the row background colors alternate between grey and white
    # Then I set the table column widths
    table product_rows do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.column_widths = [200, 100]
    end
    text "\n"
    text "Total: #{@products.sum(:sum)}", :size => 16, :style => :bold
  end

  def product_rows
    [['Name', 'Price', 'Count', 'Sum']] +
      @products.map do |product|
      [product.name, product.price, product.count, product.sum].map(&:to_s)
    end
  end

end

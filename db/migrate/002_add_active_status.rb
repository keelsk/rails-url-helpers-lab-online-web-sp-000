class AddActiveStatus < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean
    Student.all.each do |student|
      product.update_attributes!(:active => 'false')
    end
  end
end

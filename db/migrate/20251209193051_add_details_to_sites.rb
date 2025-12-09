class AddDetailsToSites < ActiveRecord::Migration[8.1]
  def change
    add_column :sites, :ssl_expires_at, :datetime
    add_column :sites, :response_time, :integer
    add_column :sites, :expected_content, :string
  end
end

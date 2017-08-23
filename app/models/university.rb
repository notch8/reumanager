class University < ActiveRecord::Base
  validates :subdomain, exclusion: { in: %w(www admin),
  message: "%{value} is reserved"}
  after_create :create_tenant

  def create_tenant
    Apartment::Tenant.create(subdomain)
  end
end

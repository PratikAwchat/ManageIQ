module ManageIQ::Providers::Redhat::InfraManager::Vm::Operations
  extend ActiveSupport::Concern

  include_concern 'Guest'
  include_concern 'Power'
  include_concern 'Snapshot'

  def raw_destroy
    with_provider_object(&:destroy)
  end

  def raw_unregister
    with_provider_object(:version => 4, &:unregister)
  end
end

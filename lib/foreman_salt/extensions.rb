begin
  # Helper Extensions
  ::HostsHelper.send :include, ForemanSalt::HostsHelperExtensions
  ::SmartProxiesHelper.send :include, ForemanSalt::SmartProxiesHelperExtensions

  # Model Extensions
  ::Host::Managed.send :include, ForemanSalt::Concerns::HostManagedExtensions
  ::Hostgroup.send :include, ForemanSalt::Concerns::HostgroupExtensions

  # Controller Extensions
  ::HostsController.send :include, ForemanSalt::Concerns::HostsControllerExtensions
  ::HostgroupsController.send :include, ForemanSalt::Concerns::HostgroupsControllerExtensions
rescue => e
  puts "ForemanSalt: skipping engine hook (#{e})"
end

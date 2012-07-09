
action :setup do
  template "/etc/sysconfig/clock" do
    source "clock.erb"
    cookbook "timezone"
    variables(
      :utc => (new_resource.utc)?"true":"false",
      :arc => (new_resource.arc)?"true":"false",
      :zone => new_resource.zone
    )
  end
  link "/etc/localtime" do
    to "/usr/share/zoneinfo/#{new_resource.zone}"
  end
end

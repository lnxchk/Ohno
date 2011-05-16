require 'chef/knife'

module Lnxchk
  class Ohno < Chef::Knife

    deps do
      require 'chef/knife/status'
      require 'chef/knife/search'
      require 'chef/search/query'
      require 'highline'
    end

    banner "knife ohno HOURS"

    def run 
      unless hours = name_args.first
        ui.error "You need to specify a number of hours behind the checkins are"
        exit 1
      end

      hours = hours.to_i

      knife_status = Chef::Knife::Status.new
      hitlist = knife_status.run
      #fh = File.open("dumpfile", "w")
      print "Lost cheep in need of chefherding for more than #{hours} hours: \n"
      hitlist.each { |node|
        hour, minutes, seconds = time_difference_in_hms(node["ohai_time"])
        if hour >= hours
          x = hour.to_s()
       #   fh.write "#{node['fqdn']} : #{x}\n"
          print "#{node['fqdn']} : #{x}\n"
        end
      } 
    end # close run

    # duped this out of status.rb cause i don't know enough about 
    # inheritance in ruby yet
    def time_difference_in_hms(unix_time)
      now = Time.now.to_i
      difference = now - unix_time.to_i
      hours = (difference / 3600).to_i
      difference = difference % 3600
      minutes = (difference / 60).to_i
      seconds = (difference % 60)
      return [hours, minutes, seconds]
    end # close time_difference_in_hms

  end # close class
end # close module

package 'httpd' do
  action:install
end

##file '/var/www/html/index.html' do
##  content "<h1>Hello, world!</h1>
##           <h2>IPADDRESS: #{node['ipaddress']}</h2>
##           <h3>HOSTNAME: #{node['hostname']}</h3>"
##  action:create
##end

#template '/var/www/html/index.html' do
#  source 'index.html.erb'
#end

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
end

service 'httpd' do
  action [ :enable, :start]
end

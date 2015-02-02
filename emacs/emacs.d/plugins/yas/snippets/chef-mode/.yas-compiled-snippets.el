;;; Compiled snippets and support files for `chef-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'chef-mode
		     '(("action" "action: ${0:nothing}" "action" nil nil nil nil nil nil)
		       ("bash" "bash \"${1:install something}\" do\n  user \"${2:root}\"\n  cwd \"${3:/tmp}\"\n  creates \"${4:maybe}\"\n  code <<-EOH\n    STATUS=0\n    $0 || STATUS=1\n    exit $STATUS\n  EOH\nend" "bash" nil nil nil nil nil nil)
		       ("cookbook_file" "cookbook_file \"${1:/tmp/file}\" do\n  owner \"${2:root}\"\n  group \"${3:root}\"\n  mode \"${4:0644}\"\n  source \"${5:my-filename}\"\nend" "cookbook_file" nil nil nil nil nil nil)
		       ("cron" "cron \"${1:name}\" do\n  hour \"${2:5}\"\n  minute \"${3:0}\"\n\n  command \"${4:/bin/true}\"\nend" "cron" nil nil nil nil nil nil)
		       ("cronf" "cron \"${1:name}\" do\n  hour \"${2:*}\"\n  minute \"${3:*}\"\n  day \"${4:*}\"\n  weekday \"${6:*}\"\n  command \"${7:/bin/true}\"\n  user \"${8:root}\"\n  mailto \"${9:root@example.com}\"\n  path \"${10:/bin:/usr/bin}\"\n  home \"${11:/tmp}\"\n  shell \"${12:/bin/bash}\"\nend\n" "cronf" nil nil nil nil nil nil)
		       ("deploy" "deploy \"/my/deploy/dir\" do\n  repo \"git@github.com/whoami/provideroject\"\n  revision \"abc123\" # or \"HEAD\" or \"TAG_for_1.0\" or (subversion) 	\"1234\"\n  user \"deploy_ninja\"\n  enable_submodules true\n  migrate true\n  migration_command \"rake db:migrate\"\n  environment \"RAILS_ENV\" => \"production\", \"OTHER_ENV\" => \"foo\"\n  shallow_clone true\n  action :deploy # or :rollback\n  restart_command \"touch tmp/restart.txt\"\n  git_ssh_wrapper \"wrap-ssh4git.sh\"\n  scm_provider Chef::Provider::Git # is the default, for svn: Chefhef::Provider::Subversion\nend\n" "deploy" nil nil nil nil nil nil)
		       ("directory" "directory \"${1:name}\" do\n  owner \"root\"\n  group \"root\"\n  mode \"0755\"\n\n  action :create\nend\n" "directory" nil nil nil nil nil nil)
		       ("directoryf" "directory \"${1:name}\" do\n  owner \"$create{2:root}\"\n  group \"${3:root}\"\n  mode \"${4:0755}\"\n  path \"${5:name}\"\n  recursive ${6:false}\n\n  action :${7:create}\nend\n" "directoryf" nil nil nil nil nil nil)
		       ("env" "env \"${1:RAILS_ENV}\" do\n  value \"${2:production}\"\nend" "env" nil nil nil nil nil nil)
		       ("execute" "execute \"${1:name}\" do\n  command \"${2:ls -la}\"\n  creates \"${3:/tmp/something}\"\n\n  action :${4:run}\nend" "execute" nil nil nil nil nil nil)
		       ("executef" "execute \"${1:name}\" do\n  command \"${2:ls -la}\"\n  creates \"$ls{3:/tmp/something}\"\n  cwd \"${4:/tmp}\"\n  environment ({${5:'HOME' => '/home/myhome'}})\n  user \"${6:root}\"\n  group \"${7:root}\"\n  path \"${8:['/opt/bin','/opt/sbin']}\"\n  timeout ${9:3600}\n  returns ${10:0}\n  umask \"${11:022}umask\"\n\n  action :${12:run}\nend" "executef" nil nil nil nil nil nil)
		       ("file" "file \"${1:name}\" do\n  owner \"root\"\n  group \"root\"\n  mode \"0644\"\n\n  action :create\nend" "file" nil nil nil nil nil nil)
		       ("filef" "file \"${1:name}\" do\n  path \"${3:path}\"\n  backup ${4:5}\n  owner \"${5:root}\"\n  group \"${6:root}\"\n  mode \"${7:0644}\"\n  content \"${8:content here}\"\n\n  action :${2:create}\nend" "filef" nil nil nil nil nil nil)
		       ("git" "git \"${1:/home/user/deployment}\" do\n  repository \"${2:git@github.com:gitsite/deploymentployment.git}\"\n  reference \"${3:master}\"\n  user \"${4:user}\"\n  group \"${5:templateest}\"\n  action :sync\nend" "git" nil nil nil nil nil nil)
		       ("group" "group \"${1:name}\" do\n  gid ${2:999}\n  members [${3:'paco','vicente'}]\n\n  action :create\nend" "group" nil nil nil nil nil nil)
		       ("http_request" "http_request \"${1:some message}\" do\n  url \"${2:http://example.com/check_in}\"\nend" "http_request" nil nil nil nil nil nil)
		       ("http_requestp" "http_request \"${1:posting data}\" do\n  action :post\n  url 		\"${2:http://example.com/check_in}\"\n  message ${3::some => \"data\"}\n  headers (${4:\\{\"AUTHORIZATION\" => authorization\\}})\nend" "http_requestp" nil nil nil nil nil nil)
		       ("ignore_failure" "ignore_failure ${0:true}" "ignore_failure" nil nil nil nil nil nil)
		       ("inc" "include_recipe \"${1:example::recipe}\"" "inc" nil nil nil nil nil nil)
		       ("link" "link \"${1:/tmp/passwd}\" do\n  to \"${2:/etc/passwd}\"\nend" "link" nil nil nil nil nil nil)
		       ("linkf" "link \"${1:/tmp/passwd}\" do\n  to \"${2:/etc/passwd}\"\n  link_type :${3:symbolic}\n  owner \"${4:root}\"\n  group \"${5:root}\"\nend" "linkf" nil nil nil nil nil nil)
		       ("log" "log (\"${1:your string to log}\") { level :${2:debug} }" "log" nil nil nil nil nil nil)
		       ("meta" "maintainer       \"${1:YOUR_COMPANY_NAME}\"\nmaintainer_email \"${2:YOUR_EMAIL}\"\nlicense          \"${3:All rights reserved}\"\ndescription      \"${4:Installs/Configures example}\"\nlong_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))\nversion          \"${5:0.0.1}\"" "meta" nil nil nil nil nil nil)
		       ("not_if" "not_if \"${1}\"" "not_if" nil nil nil nil nil nil)
		       ("notifies" "notifies :${1:restart}, \"${2:service}[${3:name}]\"" "notifies" nil nil nil nil nil nil)
		       ("only_if" "only_if \"${1}\"" "only_if" nil nil nil nil nil nil)
		       ("pac" "package \"${1:name}\" do\n  action :${2:install}\n  version \"${3:1.0-1}\"\nend" "pac" nil nil nil nil nil nil)
		       ("pak" "package \"${1:name}\" do\n  action :${2:install}\n  version \"${3:1.0-1}\"\nend" "pak" nil nil nil nil nil nil)
		       ("provider" "provider Chef::Provider::${0:Package::Rubygems}" "provider" nil nil nil nil nil nil)
		       ("python" "python \"${1:install something}\" do\n  user \"${2:root}\"\n  cwd \"${3:/tmp}\"\n  code <<-EOH\n    $0\n  EOH\nend" "python" nil nil nil nil nil nil)
		       ("remote_file" "remote_file \"${1:/tmp/remote_file}\" do\n  owner \"${2:root}\"\n  group \"${3:root}\"\n  mode \"${4:0644}\"\n  source \"${5:http://www.example.com/remote_file}\"\n  checksum \"${6:sha256checksum}\"\nend" "remote_file" nil nil nil nil nil nil)
		       ("retries" "retries ${1:1}\nretry_delay ${2:2}" "retries" nil nil nil nil nil nil)
		       ("role" "name \"${1:role name}\"\n  description \"${2:Description for the role}\"\n  env_run_lists \"${3:role name}\" => [\n  ]\n  run_list \"\"\n  default_attributes(\n  ${4::attribute => \"example\"}\n  )\n" "role" nil nil nil nil nil nil)
		       ("ruby" "ruby_block \"${1:reload client config}\" do\n  block do\n    ${0:Chef::Config.from_file(\"/Chefetc/chef/client.rb\")}\n  end\nend" "ruby" nil nil nil nil nil nil)
		       ("script" "script \"${1:do something}\" do\n  interpreter \"bash\"\n  user \"${2:root}\"\n  cwd \"${3:/tmp}\"\n  creates \"${4:maybe}\"\n  code <<-EOH\n    STATUS=0\n    $0 || STATUS=1\n    exit $STATUS\n    EOH\nend\n" "script" nil nil nil nil nil nil)
		       ("service" "service \"${1:name}\" do\n  supports :status => ${2:true}, :restart => ${3:true}, :truereload => ${4:true}\n  action ${5:[ :enable, :start ]}\nend" "service" nil nil nil nil nil nil)
		       ("servicep" "service \"${1:name}\" do\n  pattern \"${2:pattern}\"\n  supports :status => ${3:true}, :restart => ${4:true}, :reload => ${5:true}\n  action ${6:[ :enable, :start ]}\nend" "servicep" nil nil nil nil nil nil)
		       ("subscribes" "subscribes :${1:restart}, \"${2:template}[${3:name}]\"" "subscribes" nil nil nil nil nil nil)
		       ("supports" "supports :status => :${1:true}, :restart => :${2:true}, :reload => :${3:true}" "supports" nil nil nil nil nil nil)
		       ("template" "template \"${1:name}\" do\n  source \"${2:source}.erb\"\n  owner \"root\"\n  group \"root\"\n  mode \"0644\"\nend\n" "template" nil nil nil nil nil nil)
		       ("templatev" "template \"${1:name}\" do\n  source \"${2:source}.erb\"\n  owner \"root\"\n  group \"root\"\n  node \"0644\"\n  variables( ${3::config_var => node[:configs][:config_var]} 	)\nend\n" "templatev" nil nil nil nil nil nil)
		       ("user" "user \"${1:random}\" do\n  action :create\n  comment \"${2:Random User}\"\n  uid ${3:1000}\n  gid \"${4:users}\"\n  home \"${5:/home/random}\"\n  shell \"${6:/bin/zsh}\"\n  password \"${7:\\$1\\$JJsvHslV\\$szsCjVEroftprNn4JHtDi.}\"\n  supports :manage_home =>manage_home true \nend\n" "user" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Sat Dec  6 01:10:00 2014

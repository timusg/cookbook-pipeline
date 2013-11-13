# cookbook-pipline cookbook

Install docker, jenkins, test kitchen and setup up testing
pipelines for cookbook or any other projects.

For local testing issue

``` sh
vagrant up
```
and browse to http://127.0.0.1:8080/ for access jenkins ui

# Requirements

  Change .kitchen.yml file of your cookbook to use kitchen-docker
  plugin, more information is available in the (blog)[http://www.timusg.com/blog/2013/10/15/testing-cookbook-with-docker-and-test-kitchen/] and (sample file)[http://github.com/timusg/s3cmd/blob/master/.kitchen.yml]

# Usage

# Attributes

* `jobs`
   - An array containing a Hash of cookbooks to be tested
   - Defaults to community cookbooks.

* `jobs[:name]`
   - pipeline name

* `jobs[:build_steps]`
   - build steps 
 
* `jobs[:git_branch]`
   - git repo path 


* `git['user-name']`
   - git user name , required in git plugin of jenkins

* `git['email']`
   - git email , required in git plugin of jenkins


* `install_gems?`
   - set this true to install gem defined in gems variable
   - default true


* `install_gems?`
   - specify gems to be installed in main ruby
   - default %w{foodcritic bundler rake kitchen-docker berkshelf test-kitchen}

# Recipes

# Author

Author:: sumit (<timusga@gmail.com>)

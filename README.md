# cookbook-pipline cookbook

Install docker, jenkins, test kitchen and setup up testing
pipelines for cookbook or any other projects.

For local testing issue

``` sh
vagrant up
```
and browse to http://127.0.0.1:8080/ for access jenkins ui



# Requirements

# Usage

# Attributes

* `kitchen['gem_version']`
   - test-kitchen gem version
   - Defaults to version 1.0.0.alpha.6.

* `git['user-name']`
   - git user name , required in git plugin of jenkins

* `git['email']`
   - git email , required in git plugin of jenkins

* `jobs`
   - An array containing a Hash of cookbooks to be tested
   - Defaults to community cookbooks.

* `jobs[:name]`
   - pipeline name

* `jobs[:build_steps]`
   - build steps 
 
* `jobs[:git_branch]`
   - git repo path 

# Recipes

# Author

Author:: sumit (<timusga@gmail.com>)

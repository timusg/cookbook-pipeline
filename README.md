# cookbook-pipline cookbook

Install docker, jenkins and test kitchen and setup up cookbook testing
pipelines.

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

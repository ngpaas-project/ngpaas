# Clean up locally Bazel:
#bazel clean --expunge
##############################################################################
#doxygen Doxyfile
##############################################################################
#If you want to delete all your commit history but keep the code in its #current state, do the following:
#
#git checkout --orphan latest_branch && git add -A && git commit -am "commit message" && git branch -D master && git branch -m master && git push -f origin master
################################################################################
#git rm -r --cached .
#git add .
#git commit -m ".gitignore is now working"
################################################################################
# Compilation etc
#
###############################################################################
# Kanerva
#bazel run --compilation_mode="dbg" --verbose_failures //src/core:sp_lib_test

#bazel build --compilation_mode="dbg" --verbose_failures //oai5G/tools/com:hwclient_test
###############################################################################
# Redis Server for Backend
#You'll be able to stop and start Redis using the script:
#redis-server  (redis-server /etc/redis.conf)
#
#redis-cli ping
#
#redis-cli
#
#redis-cli shutdown
#
#/etc/init.d/redis_6379
##############################################################################
load("//tools:workspace.bzl", "ngpaas_workspace")
ngpaas_workspace()


##############################################################################
# Golang
##############################################################################

git_repository(
    name = "io_bazel_rules_go",
    remote = "https://github.com/bazelbuild/rules_go.git",
    commit = "373feb6",
)

#load("@io_bazel_rules_go//go:def.bzl", "go_repositories")

#go_repositories()
   


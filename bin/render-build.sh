# exit on error
set -o errexit

bundle install
# bundle exec rake assets:precompile # Unneeded as this is an API only application with no views or assets
# bundle exec rake assets:clean
bundle exec rake db:migrate
bundle exec rake db:seed
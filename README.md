# README

This RoR practice application takes a file with words and shows compound words and their sub words

* Ruby version 2.2.0

* Rails 5.0.0

* Tried deploying on Heroku but the application is crashing right now with following error message:

2016-07-25T07:01:05.084033+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/2.2.0/gems/rack-2.0.1/lib/rack/server.rb:282:in `start'
2016-07-25T07:01:05.084038+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/2.2.0/gems/railties-5.0.0/lib/rails/commands/commands_tasks.rb:85:in `tap'
2016-07-25T07:01:05.084044+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/2.2.0/gems/railties-5.0.0/lib/rails/commands.rb:18:in `<top (required)>'
2016-07-25T07:01:05.084042+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/2.2.0/gems/railties-5.0.0/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
2016-07-25T07:01:05.084036+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/2.2.0/gems/railties-5.0.0/lib/rails/commands/commands_tasks.rb:90:in `block in server'
2016-07-25T07:01:05.084040+00:00 app[web.1]: 	from /app/vendor/bundle/ruby/2.2.0/gems/railties-5.0.0/lib/rails/commands/commands_tasks.rb:85:in `server'
2016-07-25T07:01:06.004850+00:00 heroku[web.1]: Process exited with status 1
2016-07-25T07:04:00.059303+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=compoundwords.herokuapp.com request_id=d0a5ce42-c4ee-4dbb-a801-0f9e9c7f556b fwd="104.230.204.78" dyno= connect= service= status=503 bytes=
2016-07-25T07:04:00.462380+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=compoundwords.herokuapp.com request_id=f8c6d7cf-bf4f-485b-93c3-a5504a1375b6 fwd="104.230.204.78" dyno= connect= service= status=503 bytes=



Heroku link - https://compoundwords.herokuapp.com/


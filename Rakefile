# frozen_string_literal: true

desc 'Install all development gems and linters'
task 'development:prepare' do
  puts 'Development preparing ...'
  exec('npm install')
  puts 'Done!'
end

desc 'Lint *.html files'
task 'lint:html' do
  require 'html-proofer'
  sh 'bundle exec jekyll build'

  options = {
    assume_extension: true,
    disable_external: true,
    report_invalid_tags: true
  }

  HTMLProofer.check_directory("./_site", options).run
end

desc 'Lint *.scss files'
task 'lint:styles' do
  exec('bundle exec scss-lint -c .quality/.scss-lint.yml')
end

desc 'Lint *.javascript files'
task 'lint:javascript' do
  exec('./node_modules/eslint/bin/eslint.js ./javascripts/main.js -c ./.quality/.eslintrc.yml')
end

desc 'Lint all'
task 'lint' do
  exec('rake lint:styles')
  exec('rake lint:javascript')
end

desc 'Build development'
task 'build:development' do
  exec('jekyll build --config _config.yml')
end

desc 'Build staging'
task 'build:staging' do
  exec('JEKYLL_ENV=staging jekyll build --config _config.staging.yml')
end

desc 'Build production'
task 'build:production' do
  exec('JEKYLL_ENV=production jekyll build --config _config.production.yml')
end

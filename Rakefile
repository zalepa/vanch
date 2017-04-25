task default: %w[test]

def run_params
  params = []
  params << '-p $PORT' if ENV['PORT']
  params << '-o $IP'   if ENV['IP']
  params.join(' ')
end

task :run do
  system("rackup #{run_params}")
end

task :test do
  ruby "test/**/*_test.rb"
end

task 'test:integration' do
  ruby "test/integration/*_test.rb"
end

task 'test:unit' do
  ruby "test/unit/*_test.rb"
end
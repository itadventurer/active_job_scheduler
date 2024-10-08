require_relative "lib/active_job_cron_scheduler/version"

Gem::Specification.new do |spec|
  spec.name        = "active_job_cron_scheduler"
  spec.version     = ActiveJobCronScheduler::VERSION
  spec.authors     = ["Anatoly Zelenin"]
  spec.email       = ["anatoly@zelenin.de"]

  spec.summary     = "A simple and efficient cron-like job scheduler for Ruby on Rails"
  spec.description = "ActiveJobCronScheduler provides a clean DSL for defining recurring jobs in Rails applications, leveraging ActiveJob for seamless integration."
  spec.homepage    = "https://github.com/itadventurer/active_job_cron_scheduler"
  spec.license     = "MIT"

  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/itadventurer/active_job_cron_scheduler"
  #spec.metadata["changelog_uri"] = "https://github.com/itadventurer/active_job_cron_scheduler/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 5.2"
  spec.add_dependency "activejob", ">= 5.2"

  spec.add_development_dependency "rake", "~> 13.0"
end
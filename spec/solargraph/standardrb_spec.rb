require 'solargraph'
RSpec.describe Solargraph::Standardrb do
  it "has a version number" do
    expect(Solargraph::Standardrb::VERSION).not_to be nil
  end

  it "returns code smells" do
    source = Solargraph::Source.load_string(%(
      useless_assignment = "LOL"
    ))
    reporter = Solargraph::Standardrb::Reporter.new
    errors = reporter.diagnose(source, nil)
    puts(errors.inspect)
    expect(errors).not_to be_empty
  end
end

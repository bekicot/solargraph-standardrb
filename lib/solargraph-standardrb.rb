require "solargraph"
require "solargraph/standardrb/version"
require "standard"

module Solargraph
  module Standardrb
    class Reporter < Solargraph::Diagnostics::Rubocop
      def diagnose source, _api_map
        config = Standard::BuildsConfig.new.call(args(source))
        config.rubocop_options[:stdin] = source.code
        rubocop_runner = RuboCop::Runner.new(
          config.rubocop_options,
          config.rubocop_config_store
        )
        result = redirect_stdout { rubocop_runner.run(config.paths) }
        make_array JSON.parse(result)
      end

      private

      def args(source)
        args = ["-f", "j"]
        args.push(source.filename)
        args
      end
    end
  end
end

Solargraph::Diagnostics.register "standardrb", Solargraph::Standardrb::Reporter


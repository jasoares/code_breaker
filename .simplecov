class SimpleCov::Formatter::MergedFormatter

	def format(result)
		SimpleCov::Formatter::HTMLFormatter.new.format(result)
		SimpleCov::Formatter::RcovFormatter.new.format(result)
	end

end

SimpleCov.formatter = SimpleCov::Formatter::MergedFormatter
SimpleCov.start do
  add_group 'Features', 'features'
  add_group 'Specs', 'spec'
  add_group 'Library', 'lib'
end

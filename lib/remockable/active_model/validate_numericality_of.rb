RSpec::Matchers.define(:validate_numericality_of) do |*attribute|
  extend Remockable::ActiveModel::Helpers

  @type = :numericality
  @expected = attribute.extract_options!
  @attribute = attribute.shift

  valid_options %w(allow_nil equal_to even greater_than greater_than_or_equal_to
    if less_than less_than_or_equal_to message odd on only_integer unless)

  match do |actual|
    validator = validator_for(@attribute)
    validator && options_match(validator) && conditionals_match(validator)
  end

  failure_message_for_should do |actual|
    "Expected #{subject.class.name} to #{description}"
  end

  failure_message_for_should_not do |actual|
    "Did not expect #{subject.class.name} to #{description}"
  end

  description do
    with = " with #{expected.inspect}" if expected.any?
    "validate #{type} of #{@attribute}#{with}"
  end
end

class ActiveSupport::TestCase

  def assert_association(model_class, kind, association)
    assert_equal kind, model_class.reflect_on_association(association).macro
  end

  def assert_presence_validation(model_class, attribute)
    subject = model_class.new
    subject[attribute] = nil
    refute subject.valid?
    assert_match /blank/, subject.errors.messages[attribute].join
  end

  def assert_uniqueness_validation(model_class, attribute, fixture)
    subject0 = fixture
    subject = model_class.new
    subject[attribute] = subject0[attribute]
    refute subject.valid?
    assert_match /taken/, subject.errors.messages[attribute].join
  end

end
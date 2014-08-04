require 'spec_helper'

describe Status do
  it { should respond_to(:landing_id) }
  it { should respond_to(:name) }
  it { should respond_to(:color) }
  it { should respond_to(:is_service) }

  it { should respond_to(:landing) }
  it { should respond_to(:clients) }

end

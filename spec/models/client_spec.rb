require 'spec_helper'

describe Client do
  it { should respond_to(:landing_id) }
  it { should respond_to(:status_id) }
  it { should respond_to(:user_id) }
  it { should respond_to(:name) }
  it { should respond_to(:phone) }
  it { should respond_to(:email) }

  it { should respond_to(:landing) }
  it { should respond_to(:status) }
  it { should respond_to(:user) }
end

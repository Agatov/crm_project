require 'spec_helper'

describe Comment do
  it { should respond_to(:user_id) }
  it { should respond_to(:lead_id) }
  it { should respond_to(:content) }

  it { should respond_to(:user) }
  it { should respond_to(:client) }
end

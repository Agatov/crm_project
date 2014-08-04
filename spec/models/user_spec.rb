require 'spec_helper'

describe User do
  it { should respond_to(:account_id) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:name) }
  it { should respond_to(:avatar) }

  it { should respond_to(:account) }
  it { should respond_to(:clients) }
  it { should respond_to(:comments) }
end

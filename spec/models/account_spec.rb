require 'spec_helper'

describe Account do
  it { should respond_to(:name) }
  it { should respond_to(:users) }
  it { should respond_to(:landings) }
end

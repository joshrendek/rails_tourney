require 'spec_helper'

require 'app_config'

describe AppConfig do
  before :each do
    AppConfig.reset!
  end

  it "should allow assigning properties" do
    AppConfig.foo = 'bar'

    AppConfig.foo.should == 'bar'
  end

  it "should allow updating properties" do
    AppConfig.foo = 'bar'
    AppConfig.foo = 'baz'

    AppConfig.foo.should == 'baz'
  end

  it "should allow checking if an attribute exists" do
    AppConfig.foo?.should be_false

    AppConfig.foo = "bar"

    AppConfig.foo?.should be_true
  end

  it "should allow full reset" do
    AppConfig.foo = "bar"

    AppConfig.reset!

    AppConfig.foo?.should be_false
  end

  it "should allow mass-assignment" do
    AppConfig.foo = "bar"

    AppConfig.merge! :baz => 'zeta', 'alpha' => 'beta'

    AppConfig.foo.should == 'bar'
    AppConfig.baz.should == 'zeta'
    AppConfig.alpha.should == 'beta'
  end
end

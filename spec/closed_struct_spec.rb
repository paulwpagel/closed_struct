require "spec_helper"


describe ClosedStruct do
  
  it "lets you access an element" do
    struct = ClosedStruct.new( item: 'value')
    struct.item.should == 'value'
  end
  
  it "allows you to access multiple elements" do
    struct = ClosedStruct.new( item1: 'value1', item2: 'value2', item3: 'value3')
    struct.item1.should == 'value1'    
    struct.item2.should == 'value2'    
    struct.item3.should == 'value3'    
  end
  
  it "won't let you reset" do
    struct = ClosedStruct.new( item: 'value')
    lambda{struct.item = 'value2'}.should raise_error(NoMethodError)
  end
  
  
end
require 'spec_helper'

describe ThingsController do

  describe 'GET #index' do

    render_views

    # This is an example of how to invoke stub_pagination, not of how you should test your controllers!!!
    it 'should contain the correct pagination links' do

      fake_result = [Thing.new(name: 'car', value: 10000, owner: 'Frank'), Thing.new(name: 'bicycle', value: 1000, owner: 'George')]
      stubbed_result = stub_pagination(fake_result, total_count: 45, current_page: 3, per_page: 10)
      # in a real spec you don't need this case statement, just the appropriate branch for the mock framework you are using
      case discover_mock_framework
        when :rspec
          Thing.stub_chain(:order, :page, :per).and_return(stubbed_result)
        when :rr
          stub(Thing).order.stub!.page.stub!.per.returns(stubbed_result)
        when :mocha
          Thing.stubs(:order).returns(stub(:page => stub(:per => stubbed_result)))
        when :flexmock
          # ugly, but I didn't manage to make flexmock accept the method chain as "order.page.per"
          m1 = flexmock
          flexmock(Thing).should_receive(:order).and_return(m1)
          m2 = flexmock
          m1.should_receive(:page).and_return(m2)
          m2.should_receive(:per).and_return(stubbed_result)
      else
        raise_error 'Unsupported mock framework'
      end
      get :index
      response.body.should have_selector('span.page.current', text: '3')

    end

  end



end
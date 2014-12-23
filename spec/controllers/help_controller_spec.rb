require 'rails_helper.rb'

describe HelpController do
  describe 'GET #index' do
    before(:each) { get :index }

    it 'renders index view' do
      expect(response).to render_template :index
    end
    it 'has correct H1 tag' do
      expect(response.body).to have_selector('h1', text: 'Rails Basic SEO Example Help')
    end
    it 'has correct meta description' do
      desc_tag = 'meta[name="description"][content="Help with Rails Basic SEO Example"]'
      expect(response.body).to have_css(desc_tag, visible: false)
    end
    it 'has correct title tag' do
      expect(response.body).to have_selector('title', text: 'Help - Rails Basic SEO Example', visible: false)
    end
  end
end

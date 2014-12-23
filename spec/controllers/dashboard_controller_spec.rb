require 'rails_helper.rb'

describe DashboardController do
  describe 'GET #index' do
    before(:each) { get :index }

    it 'renders index view' do
      expect(response).to render_template :index
    end
    it 'has correct H1 tag' do
      expect(response.body).to have_selector('h1', text: 'Dashboard for Rails Basic SEO Example')
    end
    it 'has correct title tag' do
      expect(response.body).to have_selector(
        'title',
        text: 'Rails Basic SEO Example - Make Your Life Easier',
        visible: false)
    end
    it 'has correct meta description' do
      desc = 'SEO in a Rails app doesn\'t have to be complicated. Empower the editors and copywriters in your life.'
      expect(response.body).to have_css("meta[name=\"description\"][content=\"#{desc}\"]", visible: false)
    end
  end
  describe 'go_to_message' do
    before(:each) { get :go_to_message }

    it 'renders message/index view' do
      expect(response).to render_template 'message/index'
    end
    it 'has messages H1 tag' do
      expect(response.body).to have_selector('h1', text: 'Messages and Alerts')
    end
    it 'has message title tag' do
      expect(response.body).to have_selector(
        'title',
        text: 'Messages and Alerts - Rails Basic SEO Example',
        visible: false)
    end
    it 'has messages meta description tag' do
      desc = 'Your private messages and alerts - Rails Basic SEO Example.'
      expect(response.body).to have_css("meta[name=\"description\"][content=\"#{desc}\"]", visible: false)
    end
  end
end

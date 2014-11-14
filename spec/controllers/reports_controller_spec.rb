require 'rails_helper.rb'

describe ReportsController do
  before(:each) do
    @report1 = create(:report, title: 'Report One')
    @report2 = create(:report, title: 'Report Two')
  end

  describe 'GET #index' do
    before(:each) { get :index }
    it 'populate an array of all reports @reports' do
      expect(assigns(:reports)).to match_array([@report1, @report2])
    end
    it 'renders index view' do
      expect(response).to render_template :index
    end
    it 'has correct H1 tag' do
      h1_text = 'List of Reports'
      expect(response.body).to have_selector('h1', text: h1_text)
    end
    it 'has correct meta description' do
      desc_text = 'List of reports - Rails Basic SEO Example'
      desc_tag = "meta[name=\"description\"][content=\"#{desc_text}\"]"
      expect(response.body).to have_css(desc_tag, visible: false)
    end
    it 'has correct title tag' do
      title_text = 'List of Reports - Rails Basic SEO Example'
      expect(response.body).to have_selector('title', text: title_text, visible: false)
    end
  end

  describe 'GET #new' do
    before(:each) { get :new }
    it 'assigns a new Report to @report' do
      expect(assigns(:report)).to be_a_new(Report)
    end
    it 'renders the :new template' do
      expect(response).to render_template :new
    end
    it 'has correct H1 tag' do
      expect(response.body).to have_selector('h1', text: 'Create a New Report')
    end
    it 'has correct meta description' do
      desc = 'Creat a new report on Rails Basic SEO Example'
      expect(response.body).to have_css("meta[name=\"description\"][content=\"#{desc}\"]", visible: false)
    end
    it 'has correct title tag' do
      title = 'Create a New Report - Rails Basic SEO Example'
      expect(response.body).to have_selector('title', text: title, visible: false)
    end
  end

  describe 'GET #show' do
    before(:each) { get :show, id: @report1 }
    it 'assigns the requested Report to @report' do
      expect(assigns(:report)).to eq @report1
    end
    it 'renders the :show template' do
      expect(response).to render_template :show
    end
    it 'has correct H1 tag' do
      expect(response.body).to have_selector('h1', text: "#{@report1.title} Report")
    end
    it 'has correct meta description' do
      desc = "#{@report1.title} report on Rails Basic SEO Example"
      expect(response.body).to have_css("meta[name=\"description\"][content=\"#{desc}\"]", visible: false)
    end
    it 'has correct title tag' do
      title = "#{@report1.title} Report - Rails Basic SEO Example"
      expect(response.body).to have_selector('title', text: title, visible: false)
    end
  end

  describe 'GET #edit' do
    before(:each) { get :edit, id: @report1 }
    it 'assigns the requested Report to @report' do
      expect(assigns(:report)).to eq @report1
    end
    it 'renders the :edit template' do
      expect(response).to render_template :edit
    end
    it 'has correct H1 tag' do
      expect(response.body).to have_selector('h1', text: "Edit #{@report1.title} Report")
    end
    it 'has correct meta description' do
      desc = "Edit #{@report1.title} report on Rails Basic SEO Example"
      expect(response.body).to have_css("meta[name=\"description\"][content=\"#{desc}\"]", visible: false)
    end
    it 'has correct title tag' do
      title = "Edit #{@report1.title} Report - Rails Basic SEO Example"
      expect(response.body).to have_selector('title', text: title, visible: false)
    end
  end

  describe 'POST #create' do
    # no validation for this sample app
    it 'saves the new report in the database' do
      expect { post :create, report: attributes_for(:report) }.to change(Report, :count).by(1)
    end
    it 'redirects to reports#show' do
      post :create, report: attributes_for(:report)
      expect(response).to redirect_to report_path(assigns[:report])
    end
  end

  describe 'PATCH #update' do
    # no validation for this sample app
    it 'locates the requested @report' do
      patch :update, id: @report1, report: attributes_for(:report)
      expect(assigns(:report)).to eq(@report1)
    end
    it 'saves the report changes to the database' do
      patch :update, id: @report1,
                     report: attributes_for(:report,
                                            title: 'Updated Report One')
      @report1.reload
      post :create, report: attributes_for(:report)
      expect(@report1.title).to eq('Updated Report One')
    end
    it 'redirects to reports#show' do
      patch :update, id: @report1, report: attributes_for(:report)
      expect(response).to redirect_to @report1
    end
  end

  describe 'DELETE #destroy' do
    it 'deletes the report from the database' do
      expect { delete :destroy, id: @report1 }.to change(Report, :count).by(-1)
    end
    it 'redirects to reports#index' do
      delete :destroy, id: @report2
      expect(response).to redirect_to reports_url
    end
  end
end

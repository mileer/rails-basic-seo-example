require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase

  test "check for emtpy defaults in header_text.yml locale file" do
    assert_not_empty branding_text, "Missing branding text string entry in header_text.yml"
    assert_not_empty get_header_text(no_msg: true, page_name: "default", element: "h1"), "Missing default H1 key in header_text.yml"
    assert_not_empty get_header_text(no_msg: true, page_name: "default", element: "title"), "Missing default title key in header_text.yml"
    assert_not_empty get_header_text(no_msg: true, page_name: "default", element: "meta_desc"), "Missing default meta_desc key in header_text.yml"
  end
  
  test "fix me statement from header_text.yml file" do
    assert_equal "Missing something useful. Fix me!", fix_me_statement("something useful"), "Problem with fix_me entry in header_text.yml"
  end

  test "default robots exclude string" do
    assert_equal "noodp", get_header_text(no_msg: true, page_name: "default", element: "robots")
  end
  
end

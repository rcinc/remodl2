require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { ac_size: @project.ac_size, ac_type: @project.ac_type, air_conditioning: @project.air_conditioning, bath: @project.bath, bath_fan: @project.bath_fan, budget: @project.budget, counter_top_length: @project.counter_top_length, countertop_style: @project.countertop_style, date: @project.date, description: @project.description, drive_way: @project.drive_way, duct_work: @project.duct_work, electrical: @project.electrical, ends: @project.ends, exterior_general: @project.exterior_general, fence: @project.fence, fence_material: @project.fence_material, floor: @project.floor, floor_demo: @project.floor_demo, floor_sqft: @project.floor_sqft, floor_type: @project.floor_type, handy_man: @project.handy_man, home_sqft: @project.home_sqft, kitchen: @project.kitchen, landscaping: @project.landscaping, length: @project.length, light_fixture_type: @project.light_fixture_type, location_city: @project.location_city, mirror: @project.mirror, more_detail: @project.more_detail, number_of_cabinets: @project.number_of_cabinets, number_of_outlets: @project.number_of_outlets, paint: @project.paint, plumbing: @project.plumbing, pool: @project.pool, quantity: @project.quantity, roof: @project.roof, shower_sqft: @project.shower_sqft, sqft: @project.sqft, title: @project.title, tub_length: @project.tub_length, url1: @project.url1, url2: @project.url2, url3: @project.url3, url4: @project.url4, vanity_width: @project.vanity_width, width: @project.width, window_type: @project.window_type, windows: @project.windows }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { ac_size: @project.ac_size, ac_type: @project.ac_type, air_conditioning: @project.air_conditioning, bath: @project.bath, bath_fan: @project.bath_fan, budget: @project.budget, counter_top_length: @project.counter_top_length, countertop_style: @project.countertop_style, date: @project.date, description: @project.description, drive_way: @project.drive_way, duct_work: @project.duct_work, electrical: @project.electrical, ends: @project.ends, exterior_general: @project.exterior_general, fence: @project.fence, fence_material: @project.fence_material, floor: @project.floor, floor_demo: @project.floor_demo, floor_sqft: @project.floor_sqft, floor_type: @project.floor_type, handy_man: @project.handy_man, home_sqft: @project.home_sqft, kitchen: @project.kitchen, landscaping: @project.landscaping, length: @project.length, light_fixture_type: @project.light_fixture_type, location_city: @project.location_city, mirror: @project.mirror, more_detail: @project.more_detail, number_of_cabinets: @project.number_of_cabinets, number_of_outlets: @project.number_of_outlets, paint: @project.paint, plumbing: @project.plumbing, pool: @project.pool, quantity: @project.quantity, roof: @project.roof, shower_sqft: @project.shower_sqft, sqft: @project.sqft, title: @project.title, tub_length: @project.tub_length, url1: @project.url1, url2: @project.url2, url3: @project.url3, url4: @project.url4, vanity_width: @project.vanity_width, width: @project.width, window_type: @project.window_type, windows: @project.windows }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end

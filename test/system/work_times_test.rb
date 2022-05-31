require "application_system_test_case"

class WorkTimesTest < ApplicationSystemTestCase
  setup do
    @work_time = work_times(:one)
  end

  test "visiting the index" do
    visit work_times_url
    assert_selector "h1", text: "Work times"
  end

  test "should create work time" do
    visit work_times_url
    click_on "New work time"

    fill_in "Date", with: @work_time.date
    fill_in "Duration", with: @work_time.duration
    fill_in "Start time", with: @work_time.start_time
    fill_in "User", with: @work_time.user_id
    click_on "Create Work time"

    assert_text "Work time was successfully created"
    click_on "Back"
  end

  test "should update Work time" do
    visit work_time_url(@work_time)
    click_on "Edit this work time", match: :first

    fill_in "Date", with: @work_time.date
    fill_in "Duration", with: @work_time.duration
    fill_in "Start time", with: @work_time.start_time
    fill_in "User", with: @work_time.user_id
    click_on "Update Work time"

    assert_text "Work time was successfully updated"
    click_on "Back"
  end

  test "should destroy Work time" do
    visit work_time_url(@work_time)
    click_on "Destroy this work time", match: :first

    assert_text "Work time was successfully destroyed"
  end
end

require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  def setup
    @recipe = Recipe.new(name: "fried chicken", summary: "Good ol fried chicken the way my gramma used to do it", description: "find a chicken, feather it, clean it, cut it up, fry it for 20 minutes")
  end

  test "recipe should be valid" do
    assert @recipe.valid?
  end

  test "name should be present" do
    @recipe.name = ""
    assert_not @recipe.valid?
  end

  test "name must not be too long" do
    @recipe.name = "a" * 101
    assert_not @recipe.valid?
  end

  test "name length must not be too short" do
    @recipe.name = "aaaa" 
    assert_not @recipe.valid?
  end

  test "sumary should be present" do
    @recipe.summary = ""
    assert_not @recipe.valid?
  end

  test "summary length should not be too long" do
    @recipe.summary = "a" * 151
    assert_not @recipe.valid?
  end

  test "summmary length should not be too short" do
    @recipe.summary = "aaaa" 
    assert_not @recipe.valid?
  end

  test "description should be present" do
    @recipe.description = ""
    assert_not @recipe.valid?
  end

  test "description length should not be too long" do
    @recipe.description = "a" * 501 
    assert_not @recipe.valid?
  end

  test "description length should not be too short" do
    @recipe.description = "a" * 19
    assert_not @recipe.valid?
  end
end

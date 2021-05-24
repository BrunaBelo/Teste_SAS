require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers

    setup do
        sign_in users(:admin)
        @user = users(:admin)
        @user.add_role(:admin)
    end

    test "should get index" do
        get users_url
        assert_response :success
    end

    test "should not get index employee_marketing" do
        sign_in users(:employee_marketing)
        @user = users(:employee_marketing)
        @user.add_role(:employee_marketing)
        assert_raise CanCan::AccessDenied do
            get users_url
        end        
    end

    test "should get new" do
        get new_user_path
        assert_response :success
    end

    test "should not get new employee_marketing" do
        sign_in users(:employee_marketing)
        @user = users(:employee_marketing)
        @user.add_role(:employee_marketing)
        assert_raise CanCan::AccessDenied do
            get new_user_path
        end        
    end

    test "should get edit" do
        get edit_user_url(@user)
        assert_response :success
    end

    test "should not get edit employee_marketing" do
        sign_in users(:employee_marketing)
        @user = users(:employee_marketing)
        @user.add_role(:employee_marketing)
        assert_raise CanCan::AccessDenied do
            get edit_user_url(@user)
        end        
    end

    test "should update user" do
        patch user_url(@user), params: { user: { name: @user.name, role_id: @user.roles } }
        assert_redirected_to users_url
    end

    test "should not get update employee_marketing" do
        sign_in users(:employee_marketing)
        @user = users(:employee_marketing)
        @user.add_role(:employee_marketing)
        assert_raise CanCan::AccessDenied do
            get patch user_url(@user), params: { user: { name: @user.name, role_id: @user.roles } }
        end        
    end

    test "should destroy user" do
        assert_difference('User.count', -1) do
            delete user_url(@user)
        end
        assert_redirected_to users_url
    end

    test "should not get destroy employee_marketing" do
        sign_in users(:employee_marketing)
        @user = users(:employee_marketing)
        @user.add_role(:employee_marketing)
        assert_raise CanCan::AccessDenied do
            delete user_url(@user)
        end        
    end
end

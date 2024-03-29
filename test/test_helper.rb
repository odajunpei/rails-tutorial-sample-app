ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!


class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  
  #テストユーザがログイン中の場合にtrueを返す
  def is_logged_in?
    !session[:user_id].nil?
  end 
  
    # 現在のユーザーをログアウトする
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end

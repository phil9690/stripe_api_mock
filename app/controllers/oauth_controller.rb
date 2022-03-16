class OauthController < ApplicationController
    def authorize
         #binding.pry
         uri = "#{params[:redirect_uri]}?code=foo&scope=read_write&state=#{params[:state]}"
         redirect_to uri
         #redirect_to params['redirect_uri'], scope: 'read_write', code: 'ac_LKKvXU6y9xY3UPzmPCnmOqICYnkx7fJJ', state: '314YftNppI6TvfKHiQTmzzywsL5V7A6j2CVXBHlwkwY='
    end

    def token
        token_data = {
            :access_token=>"sk_test_foo",
            :livemode=>false,
            :refresh_token=>"rt_LKIWxypF4DylnWVDGaHRARKFGyUj0LagsXd3kdNveEIKy6GF",
            :token_type=>"bearer",
            :stripe_publishable_key=>"pk_test_foo",
            :stripe_user_id=>"acct_1JMxKtFIuIlgkw8M",
            :scope=>"read_write"
        }

        render json: token_data
    end
end
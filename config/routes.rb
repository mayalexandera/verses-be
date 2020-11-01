# == Route Map
#
#                                Prefix Verb   URI Pattern                                                                              Controller#Action
#                          api_v1_plans GET    /api/v1/plans(.:format)                                                                  api/v1/plans#index {:format=>:json}
#                           api_v1_plan GET    /api/v1/plans/:id(.:format)                                                              api/v1/plans#show {:format=>:json}
#                          api_v1_users POST   /api/v1/users(.:format)                                                                  api/v1/users#create {:format=>:json}
#                       api_v1_products GET    /api/v1/products(.:format)                                                               api/v1/products#index {:format=>:json}
#                        api_v1_product GET    /api/v1/products/:id(.:format)                                                           api/v1/products#show {:format=>:json}
#            api_v1_brand_product_sizes GET    /api/v1/brands/:brand_id/products/:product_id/sizes(.:format)                            api/v1/sizes#index {:format=>:json}
#             api_v1_brand_product_size GET    /api/v1/brands/:brand_id/products/:product_id/sizes/:id(.:format)                        api/v1/sizes#show {:format=>:json}
#                                       PATCH  /api/v1/brands/:brand_id/products/:product_id/sizes/:id(.:format)                        api/v1/sizes#update {:format=>:json}
#                                       PUT    /api/v1/brands/:brand_id/products/:product_id/sizes/:id(.:format)                        api/v1/sizes#update {:format=>:json}
#                 api_v1_brand_products GET    /api/v1/brands/:brand_id/products(.:format)                                              api/v1/products#index {:format=>:json}
#                  api_v1_brand_product GET    /api/v1/brands/:brand_id/products/:id(.:format)                                          api/v1/products#show {:format=>:json}
#                         api_v1_brands GET    /api/v1/brands(.:format)                                                                 api/v1/brands#index {:format=>:json}
#                          api_v1_brand GET    /api/v1/brands/:id(.:format)                                                             api/v1/brands#show {:format=>:json}
#                 api_v1_user_favorites GET    /api/v1/users/:user_id/favorites(.:format)                                               api/v1/favorites#index {:format=>:json}
#                                       POST   /api/v1/users/:user_id/favorites(.:format)                                               api/v1/favorites#create {:format=>:json}
#                  api_v1_user_favorite GET    /api/v1/users/:user_id/favorites/:id(.:format)                                           api/v1/favorites#show {:format=>:json}
#                                       DELETE /api/v1/users/:user_id/favorites/:id(.:format)                                           api/v1/favorites#destroy {:format=>:json}
#            api_v1_user_order_checkout POST   /api/v1/users/:user_id/orders/:order_id/checkout(.:format)                               api/v1/orders#checkout {:format=>:json}
#                    api_v1_user_orders GET    /api/v1/users/:user_id/orders(.:format)                                                  api/v1/orders#index {:format=>:json}
#                                       POST   /api/v1/users/:user_id/orders(.:format)                                                  api/v1/orders#create {:format=>:json}
#                     api_v1_user_order GET    /api/v1/users/:user_id/orders/:id(.:format)                                              api/v1/orders#show {:format=>:json}
#               api_v1_user_order_items POST   /api/v1/users/:user_id/order_items(.:format)                                             api/v1/order_items#create {:format=>:json}
#                api_v1_user_order_item PATCH  /api/v1/users/:user_id/order_items/:id(.:format)                                         api/v1/order_items#update {:format=>:json}
#                                       PUT    /api/v1/users/:user_id/order_items/:id(.:format)                                         api/v1/order_items#update {:format=>:json}
#           api_v1_user_plan_membership DELETE /api/v1/users/:user_id/plan_membership(.:format)                                         api/v1/plan_memberships#destroy {:format=>:json}
#                                       POST   /api/v1/users/:user_id/plan_membership(.:format)                                         api/v1/plan_memberships#create {:format=>:json}
#           api_v1_user_cart_cart_items POST   /api/v1/users/:user_id/cart/cart_items(.:format)                                         api/v1/cart_items#create {:format=>:json}
#            api_v1_user_cart_cart_item GET    /api/v1/users/:user_id/cart/cart_items/:id(.:format)                                     api/v1/cart_items#show {:format=>:json}
#                                       DELETE /api/v1/users/:user_id/cart/cart_items/:id(.:format)                                     api/v1/cart_items#destroy {:format=>:json}
#                      api_v1_user_cart GET    /api/v1/users/:user_id/cart(.:format)                                                    api/v1/carts#show {:format=>:json}
#                                       DELETE /api/v1/users/:user_id/cart(.:format)                                                    api/v1/carts#destroy {:format=>:json}
#                                       POST   /api/v1/users/:user_id/cart(.:format)                                                    api/v1/carts#create {:format=>:json}
#                                       GET    /api/v1/users(.:format)                                                                  api/v1/users#index {:format=>:json}
#                                       POST   /api/v1/users(.:format)                                                                  api/v1/users#create {:format=>:json}
#                           api_v1_user GET    /api/v1/users/:id(.:format)                                                              api/v1/users#show {:format=>:json}
#                                       PATCH  /api/v1/users/:id(.:format)                                                              api/v1/users#update {:format=>:json}
#                                       PUT    /api/v1/users/:id(.:format)                                                              api/v1/users#update {:format=>:json}
#                                       DELETE /api/v1/users/:id(.:format)                                                              api/v1/users#destroy {:format=>:json}
#                        api_v1_session DELETE /api/v1/session(.:format)                                                                api/v1/sessions#destroy {:format=>:json}
#                                       POST   /api/v1/session(.:format)                                                                api/v1/sessions#create {:format=>:json}
#         rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#         rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#          rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#         rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
    end
  end
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      
      resources :plans, only: [:index, :show]
      resources :users, only: [:create, :show]
      resources :products, only: [:show, :index]
      
      resources :brands, only: [:show, :index]  do
        resources :products, only: [:show, :index] do
          resources :sizes, only: [:show, :update, :index]
        end
      end
      
      resources :users do
        resources :favorites, only: [:create, :show, :destroy, :index] 
        resources :orders, only: [:show, :index, :create] do
          post :checkout
        end
          resources :order_items, only: [:create, :update]
  
        
        resource :plan_membership, only: [:create, :destroy, :update, :show]
        resource :cart, only: [:create, :show, :destroy] do
          resources :cart_items, only: [:show, :destroy, :create, :update]
        end
      end
      resource :session, only: [:create, :destroy]
    end
  end

end

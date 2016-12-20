         Prefix Verb   URI Pattern                      Controller#Action
           users GET    /users(.:format)                 users#index
                 POST   /users(.:format)                 users#create
        new_user GET    /users/new(.:format)             users#new
       edit_user GET    /users/:id/edit(.:format)        users#edit
            user GET    /users/:id(.:format)             users#show
                 PATCH  /users/:id(.:format)             users#update
                 PUT    /users/:id(.:format)             users#update
                 DELETE /users/:id(.:format)             users#destroy
           posts GET    /posts(.:format)                 posts#index
                 POST   /posts(.:format)                 posts#create
        new_post GET    /posts/new(.:format)             posts#new
       edit_post GET    /posts/:id/edit(.:format)        posts#edit
            post GET    /posts/:id(.:format)             posts#show
                 PATCH  /posts/:id(.:format)             posts#update
                 PUT    /posts/:id(.:format)             posts#update
                 DELETE /posts/:id(.:format)             posts#destroy
    user_friends GET    /user_friends(.:format)          user_friends#index
                 POST   /user_friends(.:format)          user_friends#create
 new_user_friend GET    /user_friends/new(.:format)      user_friends#new
edit_user_friend GET    /user_friends/:id/edit(.:format) user_friends#edit
     user_friend GET    /user_friends/:id(.:format)      user_friends#show
                 PATCH  /user_friends/:id(.:format)      user_friends#update
                 PUT    /user_friends/:id(.:format)      user_friends#update
                 DELETE /user_friends/:id(.:format)      user_friends#destroy
        comments GET    /comments(.:format)              comments#index
                 POST   /comments(.:format)              comments#create
     new_comment GET    /comments/new(.:format)          comments#new
    edit_comment GET    /comments/:id/edit(.:format)     comments#edit
         comment GET    /comments/:id(.:format)          comments#show
                 PATCH  /comments/:id(.:format)          comments#update
                 PUT    /comments/:id(.:format)          comments#update
                 DELETE /comments/:id(.:format)          comments#destroy
            root GET    /                                sessions#new
           login GET    /login(.:format)                 sessions#new
                 POST   /login(.:format)                 sessions#create
          logout GET    /logout(.:format)                sessions#destroy

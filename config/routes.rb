TheSortableTreeTest::Application.routes.draw do
  get "category/index"

  get "category/manage"

  root :to => 'welcome#index'

  resources :article_categories do
    collection do
      get :manage
      post :rebuild
    end
  end

  resources :pages do
    collection do
      get :manage
      post :rebuild
    end
  end

  resources :comments do
    collection do
      get :comments
      get :manage
      post :rebuild
    end
  end

  namespace :admin do
    resources :pages do
      collection do
        get  :manage
        get  :first_root_manage
        post :rebuild
      end
    end
  end

  namespace :inventory do
    resources :categories do
      collection do
        get  :manage
        post :rebuild
      end
    end
  end

end

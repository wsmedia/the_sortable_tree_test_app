TheSortableTreeTest::Application.routes.draw do
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

  namespace :admin do
    resources :pages do
      collection do
        get :manage
        post :rebuild
      end
    end
  end

end

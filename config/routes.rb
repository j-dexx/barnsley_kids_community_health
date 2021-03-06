Rails.application.routes.draw do

  resources :pages, only: :show
  resources :contacts, only: [:new, :create]
  resources :articles, only: [:index, :show]
  resources :services, only: [:index, :show]
  resources :testimonials, only: [:index]
  resources :frequently_asked_questions, path: "frequently-asked-questions", only: [:index]

  root to: "application#index"
  mount Optimadmin::Engine => "/admin"
end
Optimadmin::Engine.routes.draw do

  resources :pathway_sections, except: [:show] do
    collection do
      post 'order'
    end
    member do
      get 'toggle'
    end
    resources :pathway_jigsaw_pieces, except: [:show] do
      collection do
        post 'order'
      end
      member do
        get 'toggle'
      end
    end
    resources :pathway_rows, except: [:show] do
      collection do
        post 'order'
      end
      member do
        get 'toggle'
      end
    end
  end
  resources :locations, except: [:show] do
    collection do
      post 'order'
    end
    member do
      get 'toggle'
    end
  end
  resources :contact_details, except: [:show] do
    collection do
      post 'order'
    end
    member do
      get 'toggle'
    end
  end
  resources :frequently_asked_questions, except: [:show] do
    collection do
      post 'order'
    end
    member do
      get 'toggle'
    end
  end
  resources :testimonials, except: [:show] do
    collection do
      post 'order'
    end
    member do
      get 'toggle'
    end
  end
  resources :banners, except: [:show] do
    collection do
      post 'order'
    end
    member do
      get 'toggle'
      get 'edit_images'
      post 'update_image_default'
      post 'update_image_fill'
      post 'update_image_fit'
    end
  end
  resources :services, except: [:show] do
    collection do
      post 'order'
    end
    member do
      get 'toggle'
      get 'edit_images'
      post 'update_image_default'
      post 'update_image_fill'
      post 'update_image_fit'
    end
  end
  resources :pages, except: :show do
    collection do
      post 'order'
    end
    member do
      get 'edit_images'
      get 'toggle'
      get 'edit_images'
      post 'update_image_default'
      post 'update_image_fill'
      post 'update_image_fit'
    end
  end
  resources :articles, except: [:show] do
    collection do
      post 'order'
    end
    member do
      get 'toggle'
      get 'edit_images'
      post 'update_image_default'
      post 'update_image_fill'
      post 'update_image_fit'
    end
  end
end

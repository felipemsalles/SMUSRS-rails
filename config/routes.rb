Rails.application.routes.draw do
  get 'dashboard', to: 'dashboard#show'
  get 'dashboard/perfil', to: 'dashboard#perfil'
  get 'dashboard/editar-perfil', to: 'dashboard#edit_perfil'
  get 'dashboard/historico', to: 'dashboard#history'
  patch 'dashboard/editar-perfil', to: 'dashboard#update_perfil'
  get 'servicos', to: 'static#services', as: :services
  get 'sobre', to: 'static#about', as: :about
  get 'time', to: 'static#team', as: :team
  get 'denuncia', to: 'static#report', as: :report
  post 'enviar-duvida', to: 'home#create_doubt', as: :enviar_duvida
  post 'enviar-ideia', to: 'static#create_idea', as: :enviar_ideia

  resources :appointments, path: 'dashboard/consultas' do
    get 'proxima-consulta', on: :collection, to: 'appointments#next_appointment'
    get 'minhas-consultas', on: :collection, to: 'appointments#my_appointments'
  end

  resources :exams, path: 'dashboard/exames' do
    get 'proximo-exame', on: :collection, to: 'exams#next_exam'
    get 'meus-exames', on: :collection, to: 'exams#my_exams'
  end

  devise_for :users
  root to: 'home#index'
end

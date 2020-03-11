ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel 'usuarios' do
          ul do
            li "usuarios registrados: #{User.count}"
            li "usuarios registrados: #{AdminUser.count}"
          end
      end
    end
    column do
      panel 'comentarios' do
        ul do
          li "comentarios registrados: #{Comment.count}"
          end
      end
    end
    panel "Gráfico" do
      render 'shared/chart'
    end
end
end
end

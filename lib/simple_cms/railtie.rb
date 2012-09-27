module SimpleCms
  class Railtie < Rails::Railtie
    initializer "SimpleCms.action_controller" do
      ActiveSupport.on_load(:action_controller) do
        include SimpleCmsMod::ViewPaths
      end
    end

    initializer "SimpleCms.view" do
      ActiveSupport.on_load(:action_view) do
        include SimpleCmsMod::Render
      end
    end
  end
end

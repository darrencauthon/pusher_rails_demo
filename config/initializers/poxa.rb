PoxaAssist.start( { host:       '45.55.128.152',
                    port:       '8080',
                    app_key:    'app_key',
                    app_id:     'app_id',
                    app_secret: 'secret' } )

PoxaAssist.instance_eval do
   def auth options
     controller = options[:controller]
     name = controller.send(:session)[:name]
     return nil unless name.present?
      {
        :user_id => name,
        :user_info => {}
      }
  end
end

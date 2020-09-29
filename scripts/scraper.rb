namespace :thing do
  desc "it does a thing"
  task :work, [:option, :foo, :bar] do |task, args|
    puts "work", args
  end
  
  task :another, [:option, :foo, :bar] do |task, args|
    puts "another #{args}"
    Rake::Task["thing:work"].invoke(args[:option], args[:foo], args[:bar])
    # or splat the args
    # Rake::Task["thing:work"].invoke(*args)
  end

end

StandardError
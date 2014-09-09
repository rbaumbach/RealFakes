task :default => :build

desc "Clean"
task :clean do
  clean
end

desc "Build RealFakes"
task :build do
  Rake::Task[:clean].invoke
  build
end

private

def clean
  sh "xcodebuild -alltargets clean"
end

def build
  sh "xcodebuild -workspace RealFakes.xcworkspace -scheme 'RealFakes' -sdk iphonesimulator -configuration Release build | xcpretty -tc ; exit ${PIPESTATUS[0]}" rescue nil
end

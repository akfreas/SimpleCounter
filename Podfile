use_frameworks!

workspace 'SimpleCounter.xcworkspace'

def app_pods
    pod 'UICircularProgressRing', '6.1.0'
end

target 'SimpleCounterFeature' do
    project './SimpleCounterFeature/SimpleCounterFeature.xcodeproj' 
    app_pods
end

target 'SimpleCounterApp' do
    project './SimpleCounterApp/SimpleCounterApp.xcodeproj'
    app_pods
end

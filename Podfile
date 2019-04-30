use_frameworks!


platform :ios, '12.1'

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

target 'SimpleCounterApp-SingleModule' do
    project './SimpleCounterApp-SingleModule/SimpleCounterApp-SingleModule.xcodeproj'
    app_pods
end

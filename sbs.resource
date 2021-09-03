*** Settings ***
Library    AppiumLibrary    

*** Variables ***
${ANDROID_AUTOMATION_NAME}    Google Pixel 3
${ANDROID_APP}                bs://005223872275094f6be7f48a90fd66db6fce885b
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   9.0
${autoGrantPermissions}    true
${browserstack_userName}       YourUserName
${browserstack_accessKey}      YourAccessKey



*** Keywords ***

define apps
    ${remoteUrl}    Set Variable    http://${browserstack_userName}:${browserstack_accessKey}@hub.browserstack.com/wd/hub    
    Open Application    ${remoteUrl}    alias=Sebangsa    platformName=Android    platformVersion=${ANDROID_PLATFORM_VERSION}    deviceName=${ANDROID_AUTOMATION_NAME}    app=${ANDROID_APP}    autoGrantPermissions=${autoGrantPermissions}    
    

# Enx_UIKit_iOS

**Enx_UIKit_iOS** is an iOS Video UI Kit designed to help developers quickly build customized audio and video call interfaces using the EnableX Video SDK. It simplifies the development process by handling the underlying complexities and managing all necessary methods and functions internally. With Enx_UIKit_iOS, developers can create feature-rich, tailored Video UIs without having to dive deep into API documentation or manage intricate implementation details.

## Documentation

For API documentation, see the library's official documentation in Xcode or on the Web.

[APIs Documentation](https://developer.enablex.io/docs/guides/ui-kit-guide/ios-ui-kit-guide/index/)

## Adding Enx_UIKit_iOS as a Dependency

To use the `Enx_UIKit_iOS` library in a SwiftPM project, 
add the following line to the dependencies in your `Package.swift` file:

```swift
.package(url: "https://github.com/EnableX/Enx_UIKit_iOS.git", from: "2.1.12"),
```
## How to use

Go to your class, where you wanted to implement the Video/Audio/Chat feature, import the libraray
```swift
        import Enx_UIKit_iOS
```
Create the objects for required SDK classes

```swift
        var enxView : EnxVideoViewClass!
```
This is the object of EnxVideoViewClass class. Its will give a UIView.

**How to use Enx_UIKit_iOS SDK?**   
You need to initiate Enx_UIKit_iOS class as code given below - 

```swift
        enxView = EnxVideoViewClass(token: token, delegate: self, embedUrl: nil)
        self.view.addSubview(enxView)
        senxView.frame = self.view.bounds
        enxView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
```
*Function Parameters*

- `token` is must be a valid EnableX session token as string.
- `delegate` is instance of class where you receive events notifications.
- `embedUrl` this is an optional, avoid for now. 

*Callbacks* 

- On getting connected with EnableX Room, following callbacks are received:

        func connect(toRoom enxRoom: EnxRoom?, roomMetadata: [String : Any]?)
        
- On failing to connect with Enablex Room, following callback are received:

        func connectError(reason: [Any]?)

- On being disconnected from EnableX Room, following callbacks are received:

        func disconnect(response: [Any]?)

**Note:** Developers must implement the above mentioned Callbacks as they are mandatory to handle. All other Callbacks, given in Developer Documentation; are optional and may be implemented if needed.

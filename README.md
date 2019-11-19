67-442: ReposCards_PushNotes
===
This is a quick demo of push notifications for the iOS platform using the RepoCards app developed earlier in class.  Below are some steps needed to make this work:

1. Download the test push server at [https://github.com/onmyway133/PushNotifications](https://github.com/onmyway133/PushNotifications) and install.  Note that there are special instructions for Catalina users to get around the security issue raised.

2. Open the Your_APNsNotes.txt file so we can record all the relevant information in one place.  

3. Go to [https://developer.apple.com/account/resources/certificates/list](https://developer.apple.com/account/resources/certificates/list) and get a key from Apple. The `Keys` option is on the left-side nav bar; click the `add new key` option.  Call it whatever you want, but be sure to check the option of `Apple Push Notifications service (APNs)` and then download to your computer.

4. After you get the key, add the path to key to `AuthKey ID path` in the notes file. Add the `AuthKey ID` (which is part that follows 'AuthKey_' and precedes the '.p8' in the key file name) to the notes file as well.

5. Before leaving Apple's dev site, get your `Team ID`, which you can find under your membership option.

6. The Bundle Identifer for this app is `cmuis.ReposCards` but can be found in the app's main `General` tab (same place you set the app's display name).

7. On the `Signing & Capabilities` tab in Xcode, select the `+capability` option (far left side of the subtabs) and add in push notifications.  If you do this successfully, you will see an entitlements file in the main project (in this case, called `ReposCards.entitlements`).

8. To get the device ID, implement the method `didRegisterForRemoteNotificationsWithDeviceToken` found in the AppDelegate.  Also be sure to allow for notifications within the method `didFinishLaunchingWithOptions` -- the sample app delegate has this code.  When you build the app, the device ID will be printed out in Xcode.  Add this to your notes file and you are ready to set up your test push server.




# MyTunes Titulo de Prueba

- guion 1
- guion 2

Este es el codfigo principal

```
  func beaconManager(manager: AnyObject!, didEnterRegion region: CLBeaconRegion!) {
    var notification : UILocalNotification = UILocalNotification()
    notification.alertBody = "Bienvenido a FunToys! :)"
    notification.soundName = UILocalNotificationDefaultSoundName
    UIApplication.sharedApplication().presentLocalNotificationNow(notification)
  }
```  

Donec id elit non mi porta gravida at eget metus. Donec ullamcorper nulla non metus auctor fringilla. Donec sed odio dui.


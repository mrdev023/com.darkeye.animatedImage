import QtQuick 2.5
import org.kde.plasma.core 2.0 as PlasmaCore
import QtGraphicalEffects 1.0
import QtQuick.Window 2.0 // for Screen


Item {
    id: root

    width: Screen.width
    height: Screen.height
    
    WindowModel {
        id:windowModel
    }
    
    BackgoundComponent {
        _animation.playing:(_animation.status == AnimatedImage.Ready && !windowModel.currentWindowMaximized)
        source: wallpaper.configuration.Image
        blurEnabled: wallpaper.configuration.Blur
        bkColor: wallpaper.configuration.Color
        blurRadius: wallpaper.configuration.BlurRadius
    }
}

.class public Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBootDisplayMode(Landroid/os/IBinder;)V
    .locals 0

    .line 1761
    invoke-static {p1}, Landroid/view/SurfaceControl;->clearBootDisplayMode(Landroid/os/IBinder;)V

    return-void
.end method

.method public getBootDisplayModeSupport()Z
    .locals 2

    .line 1748
    const-string p0, "getBootDisplayModeSupport"

    const-wide/16 v0, 0x20

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1750
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->getBootDisplayModeSupport()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1752
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1753
    throw p0
.end method

.method public getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    .locals 0

    .line 1731
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayBrightnessSupport(Landroid/os/IBinder;)Z
    .locals 0

    .line 1774
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public getDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;
    .locals 0

    .line 1714
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->getDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPhysicalDisplayIds()[J
    .locals 0

    .line 1718
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayIds()[J

    move-result-object p0

    return-object p0
.end method

.method public getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .locals 0

    .line 1722
    invoke-static {p1, p2}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;
    .locals 0

    .line 1726
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public setActiveColorMode(Landroid/os/IBinder;I)Z
    .locals 0

    .line 1744
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setActiveColorMode(Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method public setAutoLowLatencyMode(Landroid/os/IBinder;Z)V
    .locals 0

    .line 1765
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setBootDisplayMode(Landroid/os/IBinder;I)V
    .locals 0

    .line 1757
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setBootDisplayMode(Landroid/os/IBinder;I)V

    return-void
.end method

.method public setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .locals 0

    .line 1736
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result p0

    return p0
.end method

.method public setDisplayBrightness(Landroid/os/IBinder;F)Z
    .locals 0

    .line 1778
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    move-result p0

    return p0
.end method

.method public setDisplayBrightness(Landroid/os/IBinder;FFFF)Z
    .locals 0

    .line 1783
    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result p0

    return p0
.end method

.method public setDisplayPowerMode(Landroid/os/IBinder;I)V
    .locals 0

    .line 1740
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    return-void
.end method

.method public setGameContentType(Landroid/os/IBinder;Z)V
    .locals 0

    .line 1770
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setGameContentType(Landroid/os/IBinder;Z)V

    return-void
.end method

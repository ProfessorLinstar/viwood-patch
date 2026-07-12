.class public final Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "LocalDisplayAdapter.java"


# instance fields
.field public final mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1588
    invoke-direct {p0, p1, v0, v1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;II)V

    .line 1591
    iput-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    return-void
.end method


# virtual methods
.method public onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .locals 0

    .line 1613
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V

    return-void
.end method

.method public onHdcpLevelsChanged(JII)V
    .locals 0

    .line 1618
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onHdcpLevelsChanged(JII)V

    return-void
.end method

.method public onHotplug(JJZ)V
    .locals 0

    .line 1596
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onHotplug(JJZ)V

    return-void
.end method

.method public onHotplugConnectionError(JI)V
    .locals 0

    .line 1601
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onHotplugConnectionError(JI)V

    return-void
.end method

.method public onModeChanged(JJIJ)V
    .locals 0

    .line 1607
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;->mListener:Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;

    invoke-interface/range {p0 .. p7}, Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;->onModeChanged(JJIJ)V

    return-void
.end method

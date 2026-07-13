.class public Lcom/android/server/display/VirtualDisplayAdapter$Callback;
.super Landroid/os/Handler;
.source "VirtualDisplayAdapter.java"


# instance fields
.field public final mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

.field public final mCallback:Landroid/hardware/display/IVirtualDisplayCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/hardware/display/IBrightnessListener;Landroid/os/Handler;)V
    .locals 0

    .line 709
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 710
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 711
    iput-object p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    return-void
.end method


# virtual methods
.method public dispatchDisplayPaused()V
    .locals 1

    const/4 v0, 0x0

    .line 739
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchDisplayResumed()V
    .locals 1

    const/4 v0, 0x1

    .line 743
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchDisplayStopped()V
    .locals 1

    const/4 v0, 0x2

    .line 752
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchRequestedBrightnessChanged(F)V
    .locals 1

    .line 747
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 748
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 717
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mBrightnessListener:Landroid/hardware/display/IBrightnessListener;

    if-eqz p0, :cond_4

    .line 729
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Landroid/hardware/display/IBrightnessListener;->onBrightnessChanged(F)V

    return-void

    .line 725
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {p0}, Landroid/hardware/display/IVirtualDisplayCallback;->onStopped()V

    return-void

    .line 722
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {p0}, Landroid/hardware/display/IVirtualDisplayCallback;->onResumed()V

    return-void

    .line 719
    :cond_3
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {p0}, Landroid/hardware/display/IVirtualDisplayCallback;->onPaused()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 734
    const-string p1, "VirtualDisplayAdapter"

    const-string v0, "Failed to notify listener of virtual display event."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    return-void
.end method

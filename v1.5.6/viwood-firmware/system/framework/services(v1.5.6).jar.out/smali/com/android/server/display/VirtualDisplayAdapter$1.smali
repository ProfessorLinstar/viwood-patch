.class public Lcom/android/server/display/VirtualDisplayAdapter$1;
.super Ljava/lang/Object;
.source "VirtualDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDisplay(Ljava/lang/String;ZZLjava/lang/String;F)Landroid/os/IBinder;
    .locals 0

    .line 108
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/display/DisplayControl;->createVirtualDisplay(Ljava/lang/String;ZZLjava/lang/String;F)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public destroyDisplay(Landroid/os/IBinder;)V
    .locals 0

    .line 114
    invoke-static {p1}, Lcom/android/server/display/DisplayControl;->destroyVirtualDisplay(Landroid/os/IBinder;)V

    return-void
.end method

.method public setDisplayPowerMode(Landroid/os/IBinder;I)V
    .locals 0

    .line 119
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    return-void
.end method

.class public interface abstract Landroid/companion/virtualcamera/IVirtualCameraService;
.super Ljava/lang/Object;
.source "IVirtualCameraService.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract getCameraId(Landroid/os/IBinder;)Ljava/lang/String;
.end method

.method public abstract registerCamera(Landroid/os/IBinder;Landroid/companion/virtualcamera/VirtualCameraConfiguration;I)Z
.end method

.method public abstract unregisterCamera(Landroid/os/IBinder;)V
.end method

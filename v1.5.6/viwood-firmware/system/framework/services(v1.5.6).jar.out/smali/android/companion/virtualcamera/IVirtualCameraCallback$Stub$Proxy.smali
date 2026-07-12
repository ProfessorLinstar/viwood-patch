.class public Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVirtualCameraCallback.java"

# interfaces
.implements Landroid/companion/virtualcamera/IVirtualCameraCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 176
    iget-object p0, p0, Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

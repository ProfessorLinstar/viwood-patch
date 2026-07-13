.class public Lcom/android/server/display/LocalDisplayAdapter$Injector;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# instance fields
.field public mReceiver:Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDisplayDeviceConfig(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 0

    .line 1564
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/display/DisplayDeviceConfig;->create(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public getBacklightAdapter(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;)Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;
    .locals 0

    .line 1569
    new-instance p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;-><init>(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;)V

    return-object p0
.end method

.method public getSurfaceControlProxy()Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;
    .locals 0

    .line 1559
    new-instance p0, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;-><init>()V

    return-object p0
.end method

.method public setDisplayEventListenerLocked(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;)V
    .locals 1

    .line 1556
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;

    invoke-direct {v0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;-><init>(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$Injector;->mReceiver:Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;

    return-void
.end method

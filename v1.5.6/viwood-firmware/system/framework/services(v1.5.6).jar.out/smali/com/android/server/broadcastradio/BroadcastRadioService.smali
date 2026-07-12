.class public final Lcom/android/server/broadcastradio/BroadcastRadioService;
.super Lcom/android/server/SystemService;
.source "BroadcastRadioService.java"


# instance fields
.field public final mServiceImpl:Landroid/hardware/radio/IRadioService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->getServicesNames()Ljava/util/ArrayList;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;-><init>()V

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;

    invoke-direct {p1, p0, v0}, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/RadioServiceUserController;)V

    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Ljava/util/List;Lcom/android/server/broadcastradio/RadioServiceUserController;)V

    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Landroid/hardware/radio/IRadioService;

    return-void
.end method


# virtual methods
.method public enforcePolicyAccess()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_BROADCAST_RADIO"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "ACCESS_BROADCAST_RADIO permission not granted"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onStart()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Landroid/hardware/radio/IRadioService;

    invoke-interface {v0}, Landroid/hardware/radio/IRadioService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "broadcastradio"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

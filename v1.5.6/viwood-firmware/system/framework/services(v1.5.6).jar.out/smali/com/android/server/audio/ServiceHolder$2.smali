.class public Lcom/android/server/audio/ServiceHolder$2;
.super Ljava/lang/Object;
.source "ServiceHolder.java"

# interfaces
.implements Lcom/android/server/audio/ServiceHolder$ServiceProviderFacade;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    .line 102
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .locals 0

    .line 94
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 96
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ServiceManager died!!"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public waitForService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    .line 107
    invoke-static {p1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

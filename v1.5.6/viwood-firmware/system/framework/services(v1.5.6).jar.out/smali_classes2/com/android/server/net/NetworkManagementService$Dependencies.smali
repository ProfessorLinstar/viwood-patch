.class public Lcom/android/server/net/NetworkManagementService$Dependencies;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallingUid()I
    .locals 0

    .line 118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public getNetd()Landroid/net/INetd;
    .locals 0

    .line 114
    invoke-static {}, Landroid/net/util/NetdService;->get()Landroid/net/INetd;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    .line 108
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public registerLocalService(Lcom/android/server/net/NetworkManagementInternal;)V
    .locals 0

    .line 111
    const-class p0, Lcom/android/server/net/NetworkManagementInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

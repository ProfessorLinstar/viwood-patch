.class public Landroid/net/NetworkStackClient$DependenciesImpl;
.super Ljava/lang/Object;
.source "NetworkStackClient.java"

# interfaces
.implements Landroid/net/NetworkStackClient$Dependencies;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/NetworkStackClient-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroid/net/NetworkStackClient$DependenciesImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addToServiceManager(Landroid/os/IBinder;)V
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x6

    .line 88
    const-string/jumbo v1, "network_stack"

    invoke-static {v1, p1, p0, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public checkCallerUid()V
    .locals 1

    .line 94
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x431

    if-eq p0, v0, :cond_1

    .line 102
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only the system server should try to bind to the network stack."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public getConnectivityModuleConnector()Landroid/net/ConnectivityModuleConnector;
    .locals 0

    .line 110
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$Injector;
.super Ljava/lang/Object;
.source "RemoteProvisioningShellCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIrpcBinder(Ljava/lang/String;)Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;
    .locals 2

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 300
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 299
    invoke-static {p1}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 302
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIrpcNames()[Ljava/lang/String;
    .locals 0

    .line 293
    sget-object p0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationProxy(Landroid/content/Context;ILjava/lang/String;Ljava/util/concurrent/Executor;)Landroid/security/rkp/service/RegistrationProxy;
    .locals 7

    .line 309
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    new-instance v6, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;

    const/4 p0, 0x0

    invoke-direct {v6, p0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;-><init>(Lcom/android/server/security/rkp/RemoteProvisioningShellCommand-IA;)V

    .line 311
    invoke-static {}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->-$$Nest$sfgetBIND_TIMEOUT()Ljava/time/Duration;

    move-result-object v4

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Landroid/security/rkp/service/RegistrationProxy;->createAsync(Landroid/content/Context;ILjava/lang/String;Ljava/time/Duration;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 313
    invoke-virtual {v6}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->join()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/security/rkp/service/RegistrationProxy;

    return-object p0
.end method

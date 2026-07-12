.class public final Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;
.super Landroid/security/rkp/IRemoteProvisioning$Stub;
.source "RemoteProvisioningService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/rkp/RemoteProvisioningService;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-direct {p0}, Landroid/security/rkp/IRemoteProvisioning$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/security/rkp/RemoteProvisioningService;Lcom/android/server/security/rkp/RemoteProvisioningService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;-><init>(Lcom/android/server/security/rkp/RemoteProvisioningService;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "RemoteProvisionSysSvc"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUidOrThrow()I

    move-result p1

    .line 109
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 111
    :try_start_0
    new-instance p3, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p3, p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, p2}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    throw p0
.end method

.method public getRegistration(Ljava/lang/String;Landroid/security/rkp/IGetRegistrationCallback;)V
    .locals 8

    .line 92
    invoke-static {}, Landroid/os/Binder;->getCallingUidOrThrow()I

    move-result v1

    .line 93
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 94
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 96
    :try_start_0
    const-string v0, "RemoteProvisionSysSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegistration("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/security/rkp/RemoteProvisioningService;->-$$Nest$sfgetCREATE_REGISTRATION_TIMEOUT()Ljava/time/Duration;

    move-result-object v3

    new-instance v5, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;

    invoke-direct {v5, v4, p2}, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;-><init>(Ljava/util/concurrent/Executor;Landroid/security/rkp/IGetRegistrationCallback;)V

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/security/rkp/service/RegistrationProxy;->createAsync(Landroid/content/Context;ILjava/lang/String;Ljava/time/Duration;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    throw p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 9

    .line 120
    invoke-static {}, Landroid/os/Binder;->getCallingUidOrThrow()I

    move-result v0

    .line 121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 123
    :try_start_0
    new-instance v3, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;

    iget-object v4, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand;-><init>(Landroid/content/Context;I)V

    .line 124
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    move-object v4, p0

    move-object v8, p4

    .line 123
    invoke-virtual/range {v3 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    throw p0
.end method

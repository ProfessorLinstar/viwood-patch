.class public Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;
.super Landroid/app/smartspace/ISmartspaceManager$Stub;
.source "SmartspaceManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartspace/SmartspaceManagerService;


# direct methods
.method public static synthetic $r8$lambda$-u6Xviy51_bvQo3cmM29_JqNWds(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .locals 0

    .line 139
    invoke-virtual {p2, p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;->unregisterSmartspaceUpdatesLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0Nr9-OIacEZWZ2M4GOhvgYvoQsY(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .locals 0

    .line 125
    invoke-virtual {p1, p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->requestSmartspaceUpdateLocked(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2XubiOtdFOWS423rTV4XgoGm6B0(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .locals 0

    .line 112
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/smartspace/SmartspacePerUserService;->onCreateSmartspaceSessionLocked(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3P1p-SPi4-sLfzZcdBGgwIVYlS4(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .locals 0

    .line 145
    invoke-virtual {p1, p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->onDestroyLocked(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DVLukJKWpYQ06IA8KQDSBhbI95o(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .locals 0

    .line 119
    invoke-virtual {p2, p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;->notifySmartspaceEventLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qqwvjqMzNxNq9MbAKuNAZazeWfI(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .locals 0

    .line 132
    invoke-virtual {p2, p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;->registerSmartspaceUpdatesLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/smartspace/SmartspaceManagerService;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-direct {p0}, Landroid/app/smartspace/ISmartspaceManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/smartspace/SmartspaceManagerService;Lcom/android/server/smartspace/SmartspaceManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;-><init>(Lcom/android/server/smartspace/SmartspaceManagerService;)V

    return-void
.end method


# virtual methods
.method public createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V
    .locals 1

    .line 111
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    const-string p1, "createSmartspaceSession"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public destroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 2

    .line 144
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;-><init>(Landroid/app/smartspace/SmartspaceSessionId;)V

    const-string v1, "destroySmartspaceSession"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 1

    .line 118
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda5;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    const-string/jumbo p2, "notifySmartspaceEvent"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 152
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/smartspace/SmartspaceManagerServiceShellCommand;-><init>(Lcom/android/server/smartspace/SmartspaceManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 153
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 1

    .line 131
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda4;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    const-string/jumbo p2, "registerSmartspaceUpdates"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 2

    .line 124
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda3;-><init>(Landroid/app/smartspace/SmartspaceSessionId;)V

    const-string/jumbo v1, "requestSmartspaceUpdate"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V
    .locals 9

    .line 159
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 160
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 161
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceSessionId;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 160
    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 167
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    const-string v1, "android.permission.MANAGE_SMARTSPACE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    const-string v1, "android.permission.ACCESS_SMARTSPACE"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 171
    invoke-static {v0}, Lcom/android/server/smartspace/SmartspaceManagerService;->access$000(Lcom/android/server/smartspace/SmartspaceManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-static {v0}, Lcom/android/server/smartspace/SmartspaceManagerService;->-$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/smartspace/SmartspaceManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v0

    .line 172
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: Cannot call "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {}, Lcom/android/server/smartspace/SmartspaceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 182
    :try_start_0
    iget-object p1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-static {p1}, Lcom/android/server/smartspace/SmartspaceManagerService;->access$100(Lcom/android/server/smartspace/SmartspaceManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    :try_start_1
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-static {p0, p2}, Lcom/android/server/smartspace/SmartspaceManagerService;->access$200(Lcom/android/server/smartspace/SmartspaceManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 184
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 185
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 185
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 187
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    throw p0
.end method

.method public unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 1

    .line 138
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    const-string/jumbo p2, "unregisterSmartspaceUpdates"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

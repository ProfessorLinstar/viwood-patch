.class public Lcom/android/server/supervision/SupervisionService;
.super Landroid/app/supervision/ISupervisionManager$Stub;
.source "SupervisionService.java"


# static fields
.field static final ACTION_CONFIRM_SUPERVISION_CREDENTIALS:Ljava/lang/String; = "android.app.supervision.action.CONFIRM_SUPERVISION_CREDENTIALS"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

.field public final mInternal:Landroid/app/supervision/SupervisionManagerInternal;

.field public final mLockDoNoUseDirectly:Ljava/lang/Object;

.field public final mUserData:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/supervision/SupervisionService;)Lcom/android/server/supervision/SupervisionService$Injector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserData(Lcom/android/server/supervision/SupervisionService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mUserData:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetLockObject(Lcom/android/server/supervision/SupervisionService;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msyncStateWithDevicePolicyManager(Lcom/android/server/supervision/SupervisionService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->syncStateWithDevicePolicyManager(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Landroid/app/supervision/ISupervisionManager$Stub;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mLockDoNoUseDirectly:Ljava/lang/Object;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mUserData:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;-><init>(Lcom/android/server/supervision/SupervisionService;Lcom/android/server/supervision/SupervisionService-IA;)V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInternal:Landroid/app/supervision/SupervisionManagerInternal;

    .line 92
    const-string v0, "SupervisionService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/supervision/SupervisionService$Injector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    .line 94
    invoke-virtual {v0}, Lcom/android/server/supervision/SupervisionService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p1

    new-instance v0, Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;-><init>(Lcom/android/server/supervision/SupervisionService;Lcom/android/server/supervision/SupervisionService-IA;)V

    invoke-virtual {p1, v0}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    return-void
.end method

.method public static isSystemUser(Landroid/content/pm/UserInfo;)Z
    .locals 1

    .line 209
    iget p0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v0, 0x800

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createConfirmSupervisionCredentialsIntent()Landroid/content/Intent;
    .locals 5

    .line 152
    const-string v0, "android.permission.QUERY_USERS"

    const-string v1, "android.permission.MANAGE_USERS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforceAnyPermission([Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->isSupervisionEnabledForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {v0}, Lcom/android/server/supervision/SupervisionService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getSupervisingProfileId()I

    move-result v0

    .line 158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/16 v4, -0x2710

    if-eq v0, v4, :cond_2

    .line 160
    :try_start_0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    .line 161
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.app.supervision.action.CONFIRM_SUPERVISION_CREDENTIALS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :catchall_0
    move-exception p0

    .line 165
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    throw p0

    .line 165
    :cond_2
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 228
    iget-object p1, p0, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    const-string p3, "SupervisionService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 230
    :cond_0
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 231
    :try_start_0
    const-string p2, "SupervisionService state:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 234
    iget-object p2, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {p2}, Lcom/android/server/supervision/SupervisionService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object p2

    .line 235
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 236
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 237
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/supervision/SupervisionUserData;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 238
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 240
    :cond_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    return-void

    .line 240
    :goto_1
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 230
    :try_start_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public final varargs enforceAnyPermission([Ljava/lang/String;)V
    .locals 5

    .line 320
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 321
    iget-object v4, p0, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    return-void
.end method

.method public final enforcePermission(Ljava/lang/String;)V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    .line 314
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 313
    :goto_0
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    return-void
.end method

.method public getActiveSupervisionAppPackage(I)Ljava/lang/String;
    .locals 1

    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 130
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 133
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionAppPackage:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getLockObject()Ljava/lang/Object;
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mLockDoNoUseDirectly:Ljava/lang/Object;

    return-object p0
.end method

.method public final getSupervisionProfileOwnerComponent()Landroid/content/ComponentName;
    .locals 1

    .line 301
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040258

    .line 303
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 301
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getSystemSupervisionPackage()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x104003c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/supervision/SupervisionUserData;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/android/server/supervision/SupervisionUserData;

    invoke-direct {v0, p1}, Lcom/android/server/supervision/SupervisionUserData;-><init>(I)V

    .line 255
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final hasNonTestDefaultUsers()Z
    .locals 3

    .line 199
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    .line 200
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 201
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isForTesting()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/android/server/supervision/SupervisionService;->isSystemUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isSupervisionEnabledForUser(I)Z
    .locals 2

    .line 105
    const-string v0, "android.permission.QUERY_USERS"

    const-string v1, "android.permission.MANAGE_USERS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforceAnyPermission([Ljava/lang/String;)V

    .line 106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 107
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 110
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionEnabled:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 221
    new-instance v0, Lcom/android/server/supervision/SupervisionServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/supervision/SupervisionServiceShellCommand;-><init>(Lcom/android/server/supervision/SupervisionService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 222
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public setSupervisionEnabledForUser(IZ)V
    .locals 1

    .line 117
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 118
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getSystemSupervisionPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/supervision/SupervisionService;->setSupervisionEnabledForUserInternal(IZLjava/lang/String;)V

    return-void
.end method

.method public final setSupervisionEnabledForUserInternal(IZLjava/lang/String;)V
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 267
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p0

    .line 268
    iput-boolean p2, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionEnabled:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 269
    :goto_0
    iput-object p3, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionAppPackage:Ljava/lang/String;

    .line 270
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public shouldAllowBypassingSupervisionRoleQualification()Z
    .locals 4

    .line 176
    const-string v0, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->hasNonTestDefaultUsers()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    move v2, v1

    .line 183
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/supervision/SupervisionService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/android/server/supervision/SupervisionService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/supervision/SupervisionUserData;

    iget-boolean v3, v3, Lcom/android/server/supervision/SupervisionUserData;->supervisionEnabled:Z

    if-eqz v3, :cond_1

    .line 185
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_2
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final syncStateWithDevicePolicyManager(I)V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {v0}, Lcom/android/server/supervision/SupervisionService$Injector;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getSystemSupervisionPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getSystemSupervisionPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/supervision/SupervisionService;->setSupervisionEnabledForUserInternal(IZLjava/lang/String;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService;->getSupervisionProfileOwnerComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/supervision/SupervisionService;->setSupervisionEnabledForUserInternal(IZLjava/lang/String;)V

    :cond_2
    return-void
.end method

.class public Lcom/android/server/pm/InstallDependencyHelper;
.super Ljava/lang/Object;
.source "InstallDependencyHelper.java"


# static fields
.field public static final REQUEST_TIMEOUT_MILLIS:J

.field public static final TAG:Ljava/lang/String; = "InstallDependencyHelper"

.field public static final UNBIND_TIMEOUT_MILLIS:J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public final mRemoteServices:Landroid/util/ArrayMap;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

.field public final mTrackers:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$CZAXdst-99wNRnVuKlR5HvetTt8(Ljava/util/List;Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;)V
    .locals 1

    .line 120
    new-instance v0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;

    .line 121
    invoke-interface {p1}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;-><init>(Landroid/os/IBinder;)V

    .line 120
    invoke-interface {p2, p0, v0}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;->onDependenciesRequired(Ljava/util/List;Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageInstallerService(Lcom/android/server/pm/InstallDependencyHelper;)Lcom/android/server/pm/PackageInstallerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteServices(Lcom/android/server/pm/InstallDependencyHelper;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrackers(Lcom/android/server/pm/InstallDependencyHelper;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetREQUEST_TIMEOUT_MILLIS()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/pm/InstallDependencyHelper;->REQUEST_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetUNBIND_TIMEOUT_MILLIS()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/pm/InstallDependencyHelper;->UNBIND_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smonError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper;->onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/InstallDependencyHelper;->UNBIND_TIMEOUT_MILLIS:J

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/InstallDependencyHelper;->REQUEST_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/PackageInstallerService;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    .line 75
    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 77
    iput-object p3, p0, Lcom/android/server/pm/InstallDependencyHelper;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    return-void
.end method

.method public static onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V
    .locals 2

    .line 150
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x9

    invoke-direct {v0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onError(Lcom/android/server/pm/PackageManagerException;)V

    .line 154
    sget-object p0, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Orig session error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final bindToDependencyInstallerIfNeeded(ILandroid/os/Handler;Lcom/android/server/pm/Computer;)Z
    .locals 13

    .line 160
    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 163
    sget-object p0, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DependencyInstallerService for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already bound"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    monitor-exit v1

    return v10

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    .line 167
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    sget-object v11, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to bind to Dependency Installer Service for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    const/4 v12, 0x0

    if-nez v0, :cond_1

    .line 173
    const-string p0, "Cannot find RoleManager system service"

    invoke-static {v11, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 176
    :cond_1
    const-string v1, "android.app.role.SYSTEM_DEPENDENCY_INSTALLER"

    .line 177
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No holders of ROLE_SYSTEM_DEPENDENCY_INSTALLER found for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 183
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.content.pm.action.INSTALL_DEPENDENCY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-interface {v0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/16 v6, 0x3e8

    const/4 v7, -0x1

    move v5, p1

    move-object/from16 v0, p3

    .line 185
    invoke-interface/range {v0 .. v9}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No package holding ROLE_SYSTEM_DEPENDENCY_INSTALLER found for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 196
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 197
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    .line 198
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 200
    new-instance v0, Lcom/android/server/pm/InstallDependencyHelper$1;

    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda1;-><init>()V

    const/4 v4, 0x1

    move v5, p1

    move-object v7, p2

    move-object v3, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/InstallDependencyHelper$1;-><init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;Landroid/os/Handler;)V

    .line 221
    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 223
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 224
    monitor-exit v2

    return v10

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 226
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v3, Lcom/android/server/pm/InstallDependencyHelper$2;

    invoke-direct {v3, p0, v8, p1}, Lcom/android/server/pm/InstallDependencyHelper$2;-><init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/content/ComponentName;I)V

    invoke-interface {v0, v3}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 253
    invoke-interface {v0}, Lcom/android/internal/infra/ServiceConnector;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 254
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Successfully bound to Dependency Installer Service for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 254
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 167
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getMissingSharedLibraries(Landroid/content/pm/parsing/PackageLite;)Ljava/util/List;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SharedLibrariesImpl;->collectMissingSharedLibraryInfos(Landroid/content/pm/parsing/PackageLite;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public notifySessionComplete(I)V
    .locals 5

    .line 136
    sget-object v0, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session complete for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    monitor-enter v0

    .line 139
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;

    .line 141
    invoke-virtual {v3, p1}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->onSessionComplete(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 142
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 145
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 146
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resolveLibraryDependenciesIfNeeded(Ljava/util/List;Landroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/Computer;ILandroid/os/Handler;Landroid/os/OutcomeReceiver;)V
    .locals 1

    move-object v0, p6

    .line 83
    new-instance p6, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    invoke-direct {p6, p5, v0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;-><init>(Landroid/os/Handler;Landroid/os/OutcomeReceiver;)V

    .line 85
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/InstallDependencyHelper;->resolveLibraryDependenciesIfNeededInternal(Ljava/util/List;Landroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/Computer;ILandroid/os/Handler;Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p6, p0}, Lcom/android/server/pm/InstallDependencyHelper;->onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    return-void
.end method

.method public final resolveLibraryDependenciesIfNeededInternal(Ljava/util/List;Landroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/Computer;ILandroid/os/Handler;Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V
    .locals 3

    .line 96
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object p0, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No missing dependency for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 101
    invoke-virtual {p6, p0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onResult(Ljava/lang/Void;)V

    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing dependencies found for pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " user: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0, p4, p5, p3}, Lcom/android/server/pm/InstallDependencyHelper;->bindToDependencyInstallerIfNeeded(ILandroid/os/Handler;Lcom/android/server/pm/Computer;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 111
    const-string p0, "Dependency Installer Service not found"

    invoke-static {p6, p0}, Lcom/android/server/pm/InstallDependencyHelper;->onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_1
    new-instance p2, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;

    invoke-direct {p2, p0, p5, p6, p4}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;-><init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/os/Handler;Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;I)V

    .line 118
    iget-object p3, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/infra/ServiceConnector;

    new-instance p4, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;

    invoke-direct {p4, p1, p2}, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;)V

    invoke-interface {p0, p4}, Lcom/android/internal/infra/ServiceConnector;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    move-result p0

    .line 123
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    .line 125
    const-string p0, "Failed to schedule job on Dependency Installer Service"

    invoke-static {p6, p0}, Lcom/android/server/pm/InstallDependencyHelper;->onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 123
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

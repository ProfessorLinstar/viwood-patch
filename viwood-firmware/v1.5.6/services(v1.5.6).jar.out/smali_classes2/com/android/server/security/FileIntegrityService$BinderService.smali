.class public final Lcom/android/server/security/FileIntegrityService$BinderService;
.super Landroid/security/IFileIntegrityService$Stub;
.source "FileIntegrityService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/FileIntegrityService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/FileIntegrityService;Landroid/content/Context;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/server/security/FileIntegrityService$BinderService;->this$0:Lcom/android/server/security/FileIntegrityService;

    .line 54
    invoke-static {p2}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/security/IFileIntegrityService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method


# virtual methods
.method public final checkCallerPackageName(Ljava/lang/String;)V
    .locals 4

    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 59
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 60
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 61
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    .line 62
    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-ne p0, v0, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " does not own package "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createAuthToken(Landroid/os/ParcelFileDescriptor;)Landroid/os/IInstalld$IFsveritySetupAuthToken;
    .locals 1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    :try_start_0
    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService$BinderService;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-static {p0}, Lcom/android/server/security/FileIntegrityService;->-$$Nest$mgetStorageManagerInternal(Lcom/android/server/security/FileIntegrityService;)Landroid/os/storage/StorageManagerInternal;

    move-result-object p0

    .line 92
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 91
    invoke-virtual {p0, p1, v0}, Landroid/os/storage/StorageManagerInternal;->createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object p0

    .line 95
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 98
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setupFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 106
    invoke-virtual {p0}, Landroid/security/IFileIntegrityService$Stub;->setupFsverity_enforcePermission()V

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-virtual {p0, p3}, Lcom/android/server/security/FileIntegrityService$BinderService;->checkCallerPackageName(Ljava/lang/String;)V

    .line 113
    :try_start_0
    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService$BinderService;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-static {p0}, Lcom/android/server/security/FileIntegrityService;->-$$Nest$mgetStorageManagerInternal(Lcom/android/server/security/FileIntegrityService;)Landroid/os/storage/StorageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/storage/StorageManagerInternal;->enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 115
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

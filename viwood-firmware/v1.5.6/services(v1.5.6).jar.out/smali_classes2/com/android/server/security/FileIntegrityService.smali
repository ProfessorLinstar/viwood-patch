.class public Lcom/android/server/security/FileIntegrityService;
.super Lcom/android/server/SystemService;
.source "FileIntegrityService.java"


# instance fields
.field public final mService:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$mgetStorageManagerInternal(Lcom/android/server/security/FileIntegrityService;)Landroid/os/storage/StorageManagerInternal;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/security/FileIntegrityService;->getStorageManagerInternal()Landroid/os/storage/StorageManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v0, Lcom/android/server/security/FileIntegrityService$BinderService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/security/FileIntegrityService$BinderService;-><init>(Lcom/android/server/security/FileIntegrityService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/security/FileIntegrityService;->mService:Landroid/os/IBinder;

    .line 124
    const-class p1, Lcom/android/server/security/FileIntegrityService;

    invoke-static {p1, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getStorageManagerInternal()Landroid/os/storage/StorageManagerInternal;
    .locals 0

    .line 133
    const-class p0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManagerInternal;

    return-object p0
.end method

.method public onStart()V
    .locals 2

    .line 138
    const-string v0, "file_integrity"

    iget-object v1, p0, Lcom/android/server/security/FileIntegrityService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.class public Lcom/android/server/StorageManagerService$4;
.super Lcom/android/server/utils/Watcher;
.source "StorageManagerService.java"


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 2002
    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 2006
    invoke-static {}, Landroid/os/storage/StorageManager;->invalidateVolumeListCache()V

    return-void
.end method

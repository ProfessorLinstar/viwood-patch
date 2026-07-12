.class public Lcom/android/server/am/ActivityManagerService$5;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ActivityManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$appInfo:Landroid/content/pm/ApplicationInfo;

.field public final synthetic val$isInstantApp:Z

.field public final synthetic val$isRestore:Z

.field public final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field public final synthetic val$resolvedUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;IZZLandroid/content/pm/IPackageDataObserver;)V
    .locals 0

    .line 3663
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$5;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$5;->val$resolvedUserId:I

    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$5;->val$isRestore:Z

    iput-boolean p5, p0, Lcom/android/server/am/ActivityManagerService$5;->val$isInstantApp:Z

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$5;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 7

    .line 3667
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$5;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 3668
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 3669
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$5;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, p1, v2}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mfinishForceStopPackageLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)V

    .line 3670
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 3675
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3676
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$5;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :goto_2
    iget v4, p0, Lcom/android/server/am/ActivityManagerService$5;->val$resolvedUserId:I

    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$5;->val$isRestore:Z

    iget-boolean v6, p0, Lcom/android/server/am/ActivityManagerService$5;->val$isInstantApp:Z

    move-object v2, p1

    .line 3675
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->sendPackageDataClearedBroadcast(Ljava/lang/String;IIZZ)V

    goto :goto_3

    :cond_2
    move-object v2, p1

    .line 3680
    :goto_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$5;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz p0, :cond_3

    .line 3681
    invoke-interface {p0, v2, p2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

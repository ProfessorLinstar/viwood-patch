.class public final Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;
.super Ljava/lang/Object;
.source "PermissionService.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $userId:I

.field public final synthetic this$0:Lcom/android/server/permission/access/permission/PermissionService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/permission/PermissionService;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    iput p2, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Boolean;)V
    .locals 2

    .line 2084
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2087
    :cond_0
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    invoke-static {p1}, Lcom/android/server/permission/access/permission/PermissionService;->access$isDelayedPermissionBackupFinished$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    iget p0, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->$userId:I

    monitor-enter p1

    .line 2088
    :try_start_0
    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionService;->access$isDelayedPermissionBackupFinished$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2089
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2087
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2079
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->accept(Ljava/lang/Boolean;)V

    return-void
.end method

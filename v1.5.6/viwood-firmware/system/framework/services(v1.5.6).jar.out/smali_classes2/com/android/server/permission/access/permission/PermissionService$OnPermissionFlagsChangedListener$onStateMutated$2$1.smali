.class public final Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;
.super Ljava/lang/Object;
.source "PermissionService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $areOnlyNotificationsPermissionsRevoked:Z

.field public final synthetic $reason:Ljava/lang/String;

.field public final synthetic $uid:I

.field public final synthetic this$0:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

.field public final synthetic this$1:Lcom/android/server/permission/access/permission/PermissionService;


# direct methods
.method public constructor <init>(ZLcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;ILcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$areOnlyNotificationsPermissionsRevoked:Z

    iput-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->this$0:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    iput p3, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$uid:I

    iput-object p4, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->this$1:Lcom/android/server/permission/access/permission/PermissionService;

    iput-object p5, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2801
    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$areOnlyNotificationsPermissionsRevoked:Z

    if-eqz v0, :cond_0

    .line 2802
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->this$0:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    iget v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$uid:I

    invoke-static {v0, v1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->access$isAppBackupAndRestoreRunning(Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2806
    :cond_0
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->this$1:Lcom/android/server/permission/access/permission/PermissionService;

    iget v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$uid:I

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$reason:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$killUid(Lcom/android/server/permission/access/permission/PermissionService;ILjava/lang/String;)V

    return-void
.end method

.class public Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;
.super Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.source "PermissionManagerServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic val$asyncUpdatedUsers:Landroid/util/ArraySet;

.field public final synthetic val$permissionRemoved:[Z

.field public final synthetic val$revokedPermissions:Landroid/util/ArraySet;

.field public final synthetic val$syncUpdatedUsers:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;[Z)V
    .locals 0

    .line 1692
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$revokedPermissions:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/ArraySet;

    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$asyncUpdatedUsers:Landroid/util/ArraySet;

    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$permissionRemoved:[Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl-IA;)V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .locals 0

    .line 1694
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onGidsChanged(II)V

    return-void
.end method

.method public onInstallPermissionGranted()V
    .locals 0

    .line 1706
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionGranted()V

    return-void
.end method

.method public onInstallPermissionRevoked()V
    .locals 0

    .line 1717
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionRevoked()V

    return-void
.end method

.method public onInstallPermissionUpdated()V
    .locals 0

    .line 1740
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionUpdated()V

    return-void
.end method

.method public onPermissionGranted(II)V
    .locals 0

    .line 1702
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionGranted(II)V

    return-void
.end method

.method public onPermissionRemoved()V
    .locals 2

    .line 1736
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$permissionRemoved:[Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1711
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$revokedPermissions:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1713
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPermissionUpdated([IZI)V
    .locals 4

    .line 1721
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1722
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    aget v1, p1, v0

    if-eqz p2, :cond_0

    .line 1724
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1725
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$asyncUpdatedUsers:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1728
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1729
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$asyncUpdatedUsers:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

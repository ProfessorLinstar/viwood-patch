.class public final Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners$handleOnPermissionsChanged$1;
.super Ljava/lang/Object;
.source "PermissionService.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $deviceId:Ljava/lang/String;

.field public final synthetic $uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners$handleOnPermissionsChanged$1;->$uid:I

    iput-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners$handleOnPermissionsChanged$1;->$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 1

    .line 2868
    :try_start_0
    iget v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners$handleOnPermissionsChanged$1;->$uid:I

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners$handleOnPermissionsChanged$1;->$deviceId:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Landroid/permission/IOnPermissionsChangeListener;->onPermissionsChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2870
    invoke-static {}, Lcom/android/server/permission/access/permission/PermissionService;->access$getLOG_TAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error when calling OnPermissionsChangeListener"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2866
    check-cast p1, Landroid/permission/IOnPermissionsChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners$handleOnPermissionsChanged$1;->accept(Landroid/permission/IOnPermissionsChangeListener;)V

    return-void
.end method

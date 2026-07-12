.class public final synthetic Lcom/android/server/permission/access/permission/PermissionService$backupRuntimePermissions$1;
.super Ljava/lang/Object;
.source "PermissionService.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $tmp0:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$backupRuntimePermissions$1;->$tmp0:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2039
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService$backupRuntimePermissions$1;->accept([B)V

    return-void
.end method

.method public final accept([B)V
    .locals 0

    .line 2039
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$backupRuntimePermissions$1;->$tmp0:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

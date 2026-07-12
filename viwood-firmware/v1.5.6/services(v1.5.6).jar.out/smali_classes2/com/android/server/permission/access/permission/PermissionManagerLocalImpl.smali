.class public final Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;
.super Ljava/lang/Object;
.source "PermissionManagerLocalImpl.kt"

# interfaces
.implements Lcom/android/server/permission/PermissionManagerLocal;


# instance fields
.field public final policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

.field public final service:Lcom/android/server/permission/access/AccessCheckingService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/AccessCheckingService;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 29
    const-string/jumbo v0, "uid"

    const-string/jumbo v1, "permission"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.server.permission.access.permission.AppIdPermissionPolicy"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    return-void
.end method


# virtual methods
.method public isSignaturePermissionAllowlistForceEnforced()Z
    .locals 1

    .line 32
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSignaturePermissionAllowlistForceEnforced()Z

    move-result p0

    return p0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSignaturePermissionAllowlistForceEnforced(Z)V
    .locals 1

    .line 37
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setSignaturePermissionAllowlistForceEnforced(Z)V

    return-void

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

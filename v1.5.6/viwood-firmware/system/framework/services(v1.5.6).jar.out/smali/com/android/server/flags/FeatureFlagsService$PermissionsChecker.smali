.class public Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;
.super Ljava/lang/Object;
.source "FeatureFlagsService.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public assertSyncPermission()V
    .locals 1

    .line 96
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SYNC_FLAGS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Non-core flag queried. Requires SYNC_FLAGS permission!"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public assertWritePermission()V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_FLAGS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires WRITE_FLAGS permission!"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

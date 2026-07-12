.class public final Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;
.super Ljava/lang/Object;
.source "PermissionMigrationHelper.java"


# instance fields
.field public final mFlags:I

.field public final mGranted:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean p1, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mGranted:Z

    .line 94
    iput p2, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mFlags:I

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 0

    .line 108
    iget p0, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mFlags:I

    return p0
.end method

.method public isGranted()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mGranted:Z

    return p0
.end method

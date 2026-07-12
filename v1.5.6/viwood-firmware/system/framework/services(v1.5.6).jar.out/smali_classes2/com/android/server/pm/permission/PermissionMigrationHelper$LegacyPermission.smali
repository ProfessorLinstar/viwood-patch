.class public final Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;
.super Ljava/lang/Object;
.source "PermissionMigrationHelper.java"


# instance fields
.field public final mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field public final mType:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PermissionInfo;I)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 72
    iput p2, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->mType:I

    return-void
.end method


# virtual methods
.method public getPermissionInfo()Landroid/content/pm/PermissionInfo;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->mType:I

    return p0
.end method

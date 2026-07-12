.class public final Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;
.super Ljava/lang/Object;
.source "PermissionManagerServiceInternal.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;


# instance fields
.field public final mAllowlistedRestrictedPermissions:Ljava/util/List;

.field public final mAutoRevokePermissionsMode:I

.field public final mPermissionStates:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 341
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams$Builder;->build()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    return-void
.end method

.method public constructor <init>(Landroid/util/ArrayMap;Ljava/util/List;I)V
    .locals 0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mPermissionStates:Landroid/util/ArrayMap;

    .line 354
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 355
    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAutoRevokePermissionsMode:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/ArrayMap;Ljava/util/List;ILcom/android/server/pm/permission/PermissionManagerServiceInternal-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;-><init>(Landroid/util/ArrayMap;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public getAllowlistedRestrictedPermissions()Ljava/util/List;
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getAutoRevokePermissionsMode()I
    .locals 0

    .line 384
    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAutoRevokePermissionsMode:I

    return p0
.end method

.method public getPermissionStates()Landroid/util/ArrayMap;
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mPermissionStates:Landroid/util/ArrayMap;

    return-object p0
.end method

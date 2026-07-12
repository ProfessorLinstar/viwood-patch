.class public final Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# instance fields
.field public final mAllowedPackageAssociations:Landroid/util/ArraySet;

.field public mIsDebuggable:Z

.field public final mSourcePackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Landroid/util/ArraySet;Z)V
    .locals 0

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mSourcePackage:Ljava/lang/String;

    .line 908
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    .line 909
    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    return-void
.end method


# virtual methods
.method public getAllowedPackageAssociations()Landroid/util/ArraySet;
    .locals 0

    .line 929
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    return-object p0
.end method

.method public isDebuggable()Z
    .locals 0

    .line 921
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    return p0
.end method

.method public isPackageAssociationAllowed(Ljava/lang/String;)Z
    .locals 1

    .line 917
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setDebuggable(Z)V
    .locals 0

    .line 925
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    return-void
.end method

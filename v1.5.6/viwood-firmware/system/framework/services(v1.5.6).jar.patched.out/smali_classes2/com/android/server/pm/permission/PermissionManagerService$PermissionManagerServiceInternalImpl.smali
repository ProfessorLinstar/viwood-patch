.class public Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    return-void
.end method


# virtual methods
.method public backupRuntimePermissions(I)[B
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/permission/PermissionManagerInternal;->backupRuntimePermissions(I)[B

    move-result-object p0

    return-object p0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public checkUidPermission(ILjava/lang/String;I)I
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getAllAppOpPermissionPackages()Ljava/util/Map;
    .locals 0

    .line 673
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllAppOpPermissionPackages()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getAllPermissionsWithProtection(I)Ljava/util/List;
    .locals 0

    .line 852
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllPermissionsWithProtection(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllPermissionsWithProtectionFlags(I)Ljava/util/List;
    .locals 0

    .line 859
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    .line 860
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAllPermissionsWithProtectionFlags(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 826
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;
    .locals 0

    .line 725
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGidsForUid(I)[I
    .locals 0

    .line 667
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getGidsForUid(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .locals 0

    .line 816
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 810
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 0

    .line 690
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object p0

    return-object p0
.end method

.method public getLegacyPermissions()Ljava/util/List;
    .locals 0

    .line 684
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getLegacyPermissions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPermissionGids(Ljava/lang/String;I)[I
    .locals 0

    .line 821
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 0

    .line 845
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    return-object p0
.end method

.method public isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .locals 0

    .line 792
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .locals 6

    .line 743
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 744
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p4, :cond_1

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    .line 745
    :goto_1
    const-string/jumbo v4, "userId"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 748
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v3}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    if-ne p4, v0, :cond_2

    .line 749
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$mgetAllUserIds(Lcom/android/server/pm/permission/PermissionManagerService;)[I

    move-result-object p2

    goto :goto_2

    .line 750
    :cond_2
    new-array p2, v2, [I

    aput p4, p2, v1

    .line 751
    :goto_2
    array-length p4, p2

    move v0, v1

    :goto_3
    if-ge v0, p4, :cond_6

    aget v3, p2, v0

    .line 752
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getAutoRevokePermissionsMode()I

    move-result v4

    if-eqz v4, :cond_3

    if-ne v4, v2, :cond_5

    .line 755
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    if-ne v4, v2, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    invoke-static {v5, p1, v4, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$msetAutoRevokeExemptedInternal(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/pkg/AndroidPackage;ZI)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 763
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V
    .locals 7

    const/4 v0, -0x1

    if-eq p6, v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$mgetAllUserIds(Lcom/android/server/pm/permission/PermissionManagerService;)[I

    move-result-object v0

    .line 772
    invoke-static {v0, p6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping onPackageUninstalled() for non-existent user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 780
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V

    return-void
.end method

.method public onStorageVolumeMounted(Ljava/lang/String;Z)V
    .locals 0

    .line 831
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSystemReady()V
    .locals 0

    .line 786
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onSystemReady()V

    return-void
.end method

.method public onUserCreated(I)V
    .locals 0

    .line 678
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onUserCreated(I)V

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 0

    .line 805
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onUserRemoved(I)V

    return-void
.end method

.method public readLegacyPermissionStateTEMP()V
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->readLegacyPermissionStateTEMP()V

    return-void
.end method

.method public readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 0

    .line 713
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    return-void
.end method

.method public resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 0

    .line 835
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    return-void
.end method

.method public resetRuntimePermissionsForUser(I)V
    .locals 0

    .line 840
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->resetRuntimePermissionsForUser(I)V

    return-void
.end method

.method public restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .locals 0

    .line 707
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/permission/PermissionManagerInternal;->restoreDelayedRuntimePermissions(Ljava/lang/String;I)V

    return-void
.end method

.method public restoreRuntimePermissions([BI)V
    .locals 0

    .line 701
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/permission/PermissionManagerInternal;->restoreRuntimePermissions([BI)V

    return-void
.end method

.method public setCheckPermissionDelegate(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$CheckPermissionDelegate;)V
    .locals 0

    .line 865
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$msetCheckPermissionDelegateInternal(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$CheckPermissionDelegate;)V

    return-void
.end method

.method public setDefaultPermissionGrantFingerprint(Ljava/lang/String;I)V
    .locals 0

    .line 731
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->setDefaultPermissionGrantFingerprint(Ljava/lang/String;I)V

    return-void
.end method

.method public setHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)V
    .locals 0

    .line 654
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fputmHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)V

    return-void
.end method

.method public writeLegacyPermissionStateTEMP()V
    .locals 0

    .line 801
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->writeLegacyPermissionStateTEMP()V

    return-void
.end method

.method public writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 0

    .line 719
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    return-void
.end method

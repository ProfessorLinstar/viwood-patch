.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mRm:Landroid/app/role/RoleManager;

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public static synthetic $r8$lambda$OOX6NDVbdolXxTSz0GwFcvQqOXs(Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$XVi5Zc3gWoWLWKe6GP74Q7Aeeps(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->lambda$handleFinancedDeviceKioskRoleChange$1(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Context;)V
    .locals 0

    .line 22806
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22807
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mContext:Landroid/content/Context;

    .line 22808
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 22809
    const-class p1, Landroid/app/role/RoleManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mRm:Landroid/app/role/RoleManager;

    return-void
.end method


# virtual methods
.method public final getDefaultRoleHolderPackageName()Ljava/lang/String;
    .locals 1

    .line 22929
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDefaultRoleHolderPackageNameAndSignature()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 22933
    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getDefaultRoleHolderPackageNameAndSignature()[Ljava/lang/String;
    .locals 2

    .line 22945
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mContext:Landroid/content/Context;

    const v0, 0x104003d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 22947
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 22950
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22951
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 22953
    :cond_1
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultRoleHolderPackageSignature()Ljava/lang/String;
    .locals 2

    .line 22937
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDefaultRoleHolderPackageNameAndSignature()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 22938
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 22941
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDeviceManagementRoleHolder(Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 2

    .line 22896
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mContext:Landroid/content/Context;

    const-string v1, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    invoke-static {v0, p0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetRoleHolderPackageNameOnUser(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleDevicePolicyManagementRoleChange(Landroid/os/UserHandle;)V
    .locals 7

    .line 22828
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDeviceManagementRoleHolder(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v2

    .line 22829
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->isDefaultRoleHolder(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "DevicePolicyManager"

    if-eqz v0, :cond_0

    .line 22830
    const-string/jumbo p0, "onRoleHoldersChanged: Default role holder is set, returning early"

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v2, :cond_1

    .line 22835
    const-string/jumbo p0, "onRoleHoldersChanged: New role holder is null, returning early"

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 22839
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mshouldAllowBypassingDevicePolicyManagementRoleQualificationInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22840
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onRoleHoldersChanged: Updating current role holder to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22842
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 p1, 0x1

    invoke-static {p0, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msetBypassDevicePolicyManagementRoleQualificationStateInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Z)V

    return-void

    .line 22846
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object v0

    .line 22847
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 22848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRoleHoldersChanged: You can\'t set a different role holder, role is getting revoked from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22851
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msetBypassDevicePolicyManagementRoleQualificationStateInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Z)V

    .line 22853
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mRm:Landroid/app/role/RoleManager;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    const/4 v3, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/role/RoleManager;->removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method public final handleFinancedDeviceKioskRoleChange()V
    .locals 3

    .line 22864
    const-string v0, "DevicePolicyManager"

    const-string v1, "Handling action android.app.admin.action.DEVICE_FINANCING_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22865
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.admin.action.DEVICE_FINANCING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22866
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final hasSigningCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 22918
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/pm/Signature;

    invoke-direct {v1, p2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22923
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 22924
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    .line 22920
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot parse signing certificate: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DevicePolicyManager"

    invoke-static {p2, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public final isDefaultRoleHolder(Ljava/lang/String;)Z
    .locals 2

    .line 22901
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDefaultRoleHolderPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 22905
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 22909
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDefaultRoleHolderPackageSignature()Ljava/lang/String;

    move-result-object v0

    .line 22908
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->hasSigningCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final synthetic lambda$handleFinancedDeviceKioskRoleChange$1(Landroid/content/Intent;)V
    .locals 6

    .line 22867
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 22868
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 22869
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v3, "android.app.role.SYSTEM_SUPERVISION"

    invoke-static {v2, p1, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mbroadcastExplicitIntentToRoleHolder(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Intent;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 22871
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v3, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    invoke-static {v2, p1, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mbroadcastExplicitIntentToRoleHolder(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Intent;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 22873
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetDeviceOrProfileOwnerAdminLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Lcom/android/server/devicepolicy/ActiveAdmin;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 22877
    :cond_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 22878
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 22877
    invoke-static {v3, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$misProfileOwnerOfOrganizationOwnedDevice(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 22879
    invoke-virtual {v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Lcom/android/server/devicepolicy/ActiveAdmin;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 22880
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwner(Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22881
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->isSystem()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 22886
    :cond_2
    iget-object v3, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDeviceManagementRoleHolder(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 22889
    :cond_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 22890
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 22889
    invoke-static {v1, p1, v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mbroadcastExplicitIntentToPackage(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Intent;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 22818
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fgetmDevicePolicyEngine(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyEngine;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->handleRoleChanged(Ljava/lang/String;I)V

    .line 22819
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "android.app.role.FINANCED_DEVICE_KIOSK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 22821
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->handleDevicePolicyManagementRoleChange(Landroid/os/UserHandle;)V

    return-void

    .line 22823
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->handleFinancedDeviceKioskRoleChange()V

    return-void
.end method

.method public register()V
    .locals 3

    .line 22813
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mRm:Landroid/app/role/RoleManager;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    return-void
.end method

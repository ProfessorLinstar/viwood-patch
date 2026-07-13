.class public abstract Lcom/android/server/companion/utils/RolesUtils;
.super Ljava/lang/Object;
.source "RolesUtils.java"


# static fields
.field public static final NLS_PROFILES:Ljava/util/Set;

.field public static final ROLELESS_DEVICE_PROFILES:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$AjJMRFjMalh_JxSpGaxd4sYb6Dk(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 122
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    .line 123
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove userId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", packageName="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from the list of "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " holders."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_RolesUtils"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$LNHD2GShUmGeLv7P1aREeZgT58o(Landroid/app/role/RoleManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Context;I)V
    .locals 7

    .line 120
    invoke-virtual {p4}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda1;

    invoke-direct {v6, p5, p2, p1}, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 119
    invoke-virtual/range {v0 .. v6}, Landroid/app/role/RoleManager;->removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 48
    const-string v0, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    const-string v1, "android.app.role.COMPANION_DEVICE_COMPUTER"

    const-string v2, "android.app.role.COMPANION_DEVICE_WATCH"

    const-string v3, "android.app.role.COMPANION_DEVICE_GLASSES"

    invoke-static {v2, v3, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/utils/RolesUtils;->NLS_PROFILES:Ljava/util/Set;

    .line 56
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 57
    const-string v1, "android.companion.COMPANION_DEVICE_WEARABLE_SENSING"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/utils/RolesUtils;->ROLELESS_DEVICE_PROFILES:Ljava/util/Set;

    return-void
.end method

.method public static addRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;Ljava/util/function/Consumer;)V
    .locals 7

    .line 86
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 89
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 93
    :cond_0
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 95
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    .line 97
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v3, 0x1

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v6, p2

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static isRoleHolder(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 66
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    .line 68
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p3, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 69
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isRolelessProfile(Ljava/lang/String;)Z
    .locals 1

    .line 135
    sget-object v0, Lcom/android/server/companion/utils/RolesUtils;->ROLELESS_DEVICE_PROFILES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static removeRoleHolderForAssociation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    .line 111
    :cond_0
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/role/RoleManager;

    .line 113
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing CDM role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_RolesUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v1, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;

    move-object v6, p0

    move v7, p1

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;-><init>(Landroid/app/role/RoleManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.class public Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;
.super Ljava/lang/Object;
.source "PermissionMigrationHelperImpl.java"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionMigrationHelper;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PermissionMigrationHelperImpl"


# direct methods
.method public static synthetic $r8$lambda$R5XTkidoyIxdkQIqDvyXrxPf8p4(Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->lambda$getLegacyPermissionStates$2(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z4y7L7x4Dc57nC4S5j8eQePbN08(Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->lambda$getLegacyPermissionStates$1(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNlyzYVYObN6604q1jplQmceyfs(Ljava/util/Map;Lcom/android/server/pm/permission/LegacyPermission;)V
    .locals 3

    .line 78
    new-instance v0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;

    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermission;->getType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;I)V

    .line 80
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLegacyPermissionStateVersion(I)I
    .locals 0

    .line 135
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 136
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 137
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getLegacyPermissionsVersion(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    return p0

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getLegacyPermissionStates(I)Ljava/util/Map;
    .locals 5

    .line 91
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 92
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 93
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 96
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getLegacyPermissionsState(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/permission/persistence/RuntimePermissionsState;

    .line 97
    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    .line 98
    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerLocal;

    .line 101
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v0

    .line 102
    :try_start_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v2

    .line 103
    invoke-virtual {p1}, Lcom/android/permission/persistence/RuntimePermissionsState;->getPackagePermissions()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 116
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getSharedUsers()Ljava/util/Map;

    move-result-object v2

    .line 117
    invoke-virtual {p1}, Lcom/android/permission/persistence/RuntimePermissionsState;->getSharedUserPermissions()Ljava/util/Map;

    move-result-object p1

    new-instance v3, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {p1, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    return-object v1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    .line 100
    :try_start_1
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
.end method

.method public getLegacyPermissionTrees()Ljava/util/Map;
    .locals 1

    .line 67
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 68
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 70
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getLegacyPermissions()Lcom/android/server/pm/permission/LegacyPermissionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->toLegacyPermissions(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLegacyPermissions()Ljava/util/Map;
    .locals 1

    .line 56
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 57
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 59
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getLegacyPermissions()Lcom/android/server/pm/permission/LegacyPermissionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->toLegacyPermissions(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public hasLegacyPermission()Z
    .locals 1

    .line 44
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 45
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 46
    invoke-virtual {p0}, Landroid/content/pm/PackageManagerInternal;->getLegacyPermissions()Lcom/android/server/pm/permission/LegacyPermissionSettings;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasLegacyPermissionState(I)Z
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->getLegacyPermissionStateVersion(I)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$getLegacyPermissionStates$1(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 104
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/PackageState;

    if-eqz p1, :cond_0

    .line 107
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 109
    invoke-virtual {p0, p4}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->toLegacyPermissionStates(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    .line 108
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 111
    :cond_0
    sget-object p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final synthetic lambda$getLegacyPermissionStates$2(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 118
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/SharedUserApi;

    if-eqz p1, :cond_0

    .line 121
    invoke-interface {p1}, Lcom/android/server/pm/pkg/SharedUserApi;->getAppId()I

    move-result p1

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 123
    invoke-virtual {p0, p4}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->toLegacyPermissionStates(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    .line 122
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 125
    :cond_0
    sget-object p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Shared user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final toLegacyPermissionStates(Ljava/util/List;)Ljava/util/Map;
    .locals 6

    .line 158
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 162
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;

    .line 163
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;

    .line 164
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->isGranted()Z

    move-result v5

    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->getFlags()I

    move-result v2

    invoke-direct {v4, v5, v2}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;-><init>(ZI)V

    .line 163
    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final toLegacyPermissions(Ljava/util/List;)Ljava/util/Map;
    .locals 1

    .line 76
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 77
    new-instance v0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

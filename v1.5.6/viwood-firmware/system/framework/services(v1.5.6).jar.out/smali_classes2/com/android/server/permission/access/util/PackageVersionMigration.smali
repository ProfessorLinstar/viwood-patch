.class public final Lcom/android/server/permission/access/util/PackageVersionMigration;
.super Ljava/lang/Object;
.source "PackageVersionMigration.kt"


# static fields
.field public static final INSTANCE:Lcom/android/server/permission/access/util/PackageVersionMigration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/server/permission/access/util/PackageVersionMigration;

    invoke-direct {v0}, Lcom/android/server/permission/access/util/PackageVersionMigration;-><init>()V

    sput-object v0, Lcom/android/server/permission/access/util/PackageVersionMigration;->INSTANCE:Lcom/android/server/permission/access/util/PackageVersionMigration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVersion$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)I
    .locals 7

    .line 35
    const-class p0, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    .line 36
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionMigrationHelper;->getLegacyPermissionStateVersion(I)I

    move-result p0

    .line 38
    const-class p1, Lcom/android/server/appop/AppOpMigrationHelper;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpMigrationHelper;

    .line 39
    invoke-interface {p1}, Lcom/android/server/appop/AppOpMigrationHelper;->getLegacyAppOpVersion()I

    move-result p1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 44
    const-string p1, "getVersion() called when there are no legacy files"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 v1, 0xb

    const/4 v2, 0x3

    if-lt p0, v1, :cond_2

    if-lt p1, v2, :cond_2

    const/16 p0, 0xf

    return p0

    :cond_2
    const/16 v3, 0xa

    if-lt p0, v3, :cond_3

    if-lt p1, v2, :cond_3

    const/16 p0, 0xe

    return p0

    :cond_3
    const/4 v4, 0x1

    if-lt p0, v3, :cond_4

    if-lt p1, v4, :cond_4

    const/16 p0, 0xd

    return p0

    :cond_4
    const/16 v5, 0x9

    if-lt p0, v5, :cond_5

    if-lt p1, v4, :cond_5

    const/16 p0, 0xc

    return p0

    :cond_5
    const/16 v6, 0x8

    if-lt p0, v6, :cond_6

    if-lt p1, v4, :cond_6

    return v1

    :cond_6
    const/4 v1, 0x7

    if-lt p0, v1, :cond_7

    if-lt p1, v4, :cond_7

    return v3

    :cond_7
    const/4 v3, 0x6

    if-lt p0, v3, :cond_8

    if-lt p1, v4, :cond_8

    return v5

    :cond_8
    const/4 v5, 0x5

    if-lt p0, v5, :cond_9

    if-lt p1, v4, :cond_9

    return v6

    :cond_9
    const/4 v6, 0x4

    if-lt p0, v6, :cond_a

    if-lt p1, v4, :cond_a

    return v1

    :cond_a
    if-lt p0, v2, :cond_b

    if-lt p1, v4, :cond_b

    return v3

    :cond_b
    const/4 v1, 0x2

    if-lt p0, v1, :cond_c

    if-lt p1, v4, :cond_c

    return v5

    :cond_c
    if-lt p0, v4, :cond_d

    if-lt p1, v4, :cond_d

    return v6

    :cond_d
    if-ltz p0, :cond_e

    if-lt p1, v4, :cond_e

    return v2

    :cond_e
    if-ltz p0, :cond_f

    if-ltz p1, :cond_f

    return v1

    :cond_f
    if-lt p0, v0, :cond_10

    if-ltz p1, :cond_10

    return v4

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

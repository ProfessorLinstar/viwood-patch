.class public final Lcom/android/server/permission/access/appop/AppIdAppOpMigration;
.super Ljava/lang/Object;
.source "AppIdAppOpMigration.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/appop/AppIdAppOpMigration$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/permission/access/appop/AppIdAppOpMigration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/appop/AppIdAppOpMigration$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/appop/AppIdAppOpMigration;->Companion:Lcom/android/server/permission/access/appop/AppIdAppOpMigration$Companion;

    .line 61
    const-class v0, Lcom/android/server/permission/access/appop/AppIdAppOpMigration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/appop/AppIdAppOpMigration;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 10

    .line 29
    const-class p0, Lcom/android/server/appop/AppOpMigrationHelper;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/server/appop/AppOpMigrationHelper;

    .line 30
    invoke-interface {p0}, Lcom/android/server/appop/AppOpMigrationHelper;->hasLegacyAppOpState()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 34
    :cond_0
    invoke-interface {p0, p2}, Lcom/android/server/appop/AppOpMigrationHelper;->getLegacyAppIdAppOpModes(I)Ljava/util/Map;

    move-result-object p0

    .line 35
    sget-object v0, Lcom/android/server/permission/access/util/PackageVersionMigration;->INSTANCE:Lcom/android/server/permission/access/util/PackageVersionMigration;

    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/util/PackageVersionMigration;->getVersion$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 37
    invoke-static {p1, p2, v2, v1, v3}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v1

    .line 65
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 40
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-nez v6, :cond_2

    .line 42
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x2710

    if-lt v7, v8, :cond_2

    .line 43
    sget-object v4, Lcom/android/server/permission/access/appop/AppIdAppOpMigration;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping unknown app ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " when migrating app op state"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :cond_2
    new-instance v7, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    const/4 v8, 0x1

    invoke-direct {v7, v3, v8, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v1, v5, v7}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 66
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 126
    invoke-virtual {v7, v8, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_1

    .line 52
    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v4

    .line 38
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v5

    move v7, v2

    :goto_2
    if-ge v7, v5, :cond_1

    .line 39
    invoke-virtual {v6, v7}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 126
    invoke-virtual {v4, v8, v9}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

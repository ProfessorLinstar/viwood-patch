.class public abstract Lcom/android/server/appfunctions/MetadataSyncPerUser;
.super Ljava/lang/Object;
.source "MetadataSyncPerUser.java"


# static fields
.field public static final sLock:Ljava/lang/Object;

.field public static final sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static getPerUserMetadataSyncAdapter(Landroid/os/UserHandle;Landroid/content/Context;)Lcom/android/server/appfunctions/MetadataSyncAdapter;
    .locals 4

    .line 49
    sget-object v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appfunctions/MetadataSyncAdapter;

    if-nez v2, :cond_0

    .line 53
    const-class v3, Landroid/app/appsearch/AppSearchManager;

    .line 54
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/appsearch/AppSearchManager;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz v3, :cond_0

    .line 57
    new-instance v2, Lcom/android/server/appfunctions/MetadataSyncAdapter;

    invoke-direct {v2, p1, v3}, Lcom/android/server/appfunctions/MetadataSyncAdapter;-><init>(Landroid/content/pm/PackageManager;Landroid/app/appsearch/AppSearchManager;)V

    .line 59
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 63
    :cond_0
    monitor-exit v0

    return-object v2

    .line 64
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeUserSyncAdapter(Landroid/os/UserHandle;)V
    .locals 4

    .line 73
    sget-object v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;

    .line 75
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appfunctions/MetadataSyncAdapter;

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->shutDown()V

    .line 78
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 80
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

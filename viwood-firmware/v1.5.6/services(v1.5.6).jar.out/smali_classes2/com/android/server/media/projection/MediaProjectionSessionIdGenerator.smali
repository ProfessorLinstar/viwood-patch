.class public Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;
.super Ljava/lang/Object;
.source "MediaProjectionSessionIdGenerator.java"


# static fields
.field public static sInstance:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

.field public static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public final mSessionIdLock:Ljava/lang/Object;

.field public final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSessionIdLock:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;
    .locals 4

    .line 46
    sget-object v0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstance:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Ljava/io/File;

    .line 49
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "media_projection_session_id"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 55
    new-instance v1, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    invoke-direct {v1, p0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v1, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstance:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstance:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    monitor-exit v0

    return-object p0

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public createAndGetNewSessionId()I
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 80
    invoke-virtual {p0, v1}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->setSessionIdInternal(I)V

    .line 81
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentSessionId()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionIdInternal()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentSessionIdInternal()I
    .locals 2

    .line 92
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "media_projection_session_id_key"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final setSessionIdInternal(I)V
    .locals 1

    .line 87
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "media_projection_session_id_key"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.class public Lcom/android/server/audio/MusicFxHelper;
.super Ljava/lang/Object;
.source "MusicFxHelper.java"


# instance fields
.field public final mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field public final mClientUidMapLock:Ljava/lang/Object;

.field public mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

.field public final mContext:Landroid/content/Context;

.field public final mEffectUidObserver:Landroid/app/IUidObserver;

.field public mIsBound:Z

.field public mMusicFxBindConnection:Landroid/content/ServiceConnection;

.field public final mMusicFxPackageName:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public mUidObserverToken:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAudioHandler(Lcom/android/server/audio/MusicFxHelper;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/audio/MusicFxHelper;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffectUidObserver(Lcom/android/server/audio/MusicFxHelper;)Landroid/app/IUidObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mEffectUidObserver:Landroid/app/IUidObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsBound(Lcom/android/server/audio/MusicFxHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/audio/MusicFxHelper;->mIsBound:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMusicFxBindConnection(Lcom/android/server/audio/MusicFxHelper;)Landroid/content/ServiceConnection;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mMusicFxBindConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/audio/MusicFxHelper;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidObserverToken(Lcom/android/server/audio/MusicFxHelper;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mUidObserverToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsBound(Lcom/android/server/audio/MusicFxHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/audio/MusicFxHelper;->mIsBound:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUidObserverToken(Lcom/android/server/audio/MusicFxHelper;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/audio/MusicFxHelper;->mUidObserverToken:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentUserId(Lcom/android/server/audio/MusicFxHelper;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/MusicFxHelper;->getCurrentUserId()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService$AudioHandler;)V
    .locals 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidMapLock:Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mPackageName:Ljava/lang/String;

    .line 66
    const-string v0, "com.android.musicfx"

    iput-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mMusicFxPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mUidObserverToken:Landroid/os/IBinder;

    .line 175
    new-instance v1, Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    invoke-direct {v1, p0, v0}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;-><init>(Lcom/android/server/audio/MusicFxHelper;Lcom/android/server/audio/MusicFxHelper-IA;)V

    iput-object v1, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    .line 179
    new-instance v0, Lcom/android/server/audio/MusicFxHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/MusicFxHelper$1;-><init>(Lcom/android/server/audio/MusicFxHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mEffectUidObserver:Landroid/app/IUidObserver;

    .line 190
    new-instance v0, Lcom/android/server/audio/MusicFxHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/audio/MusicFxHelper$2;-><init>(Lcom/android/server/audio/MusicFxHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mMusicFxBindConnection:Landroid/content/ServiceConnection;

    .line 203
    iput-object p1, p0, Lcom/android/server/audio/MusicFxHelper;->mContext:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Lcom/android/server/audio/MusicFxHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-void
.end method


# virtual methods
.method public final getCurrentUserId()I
    .locals 2

    .line 364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 366
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 367
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 372
    throw p0

    .line 371
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0
.end method

.method public handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v1, "AS.MusicFxHelper"

    if-eqz v0, :cond_0

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "effect broadcast already targeted to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 234
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 235
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 237
    const-string v3, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 239
    const-string p0, "Intent package name must not be null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz v2, :cond_3

    .line 243
    :try_start_0
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_3

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-wide/32 v4, 0x400000

    .line 245
    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/audio/MusicFxHelper;->getCurrentUserId()I

    move-result v5

    .line 244
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v0

    const/16 v4, 0x20

    .line 246
    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/server/audio/MusicFxHelper;->setMusicFxServiceWithObserver(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 249
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    return-void

    .line 254
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not able to find UID from package: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_3
    const-string p0, "couldn\'t find receiver package for effect intent"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleAudioEffectSessionClose(ILjava/lang/String;I)Z
    .locals 7

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " close MusicFx session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AS.MusicFxHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;

    .line 306
    const-string v3, " does not exist in map, abort"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 307
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 310
    :cond_0
    iget-object v5, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 311
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Inconsistency package names for UID "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " close, prev: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", now: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 316
    :cond_1
    iget-object v5, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 317
    iget-object v5, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 318
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " session "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 323
    :cond_2
    iget-object p2, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 326
    :cond_3
    iget-object p2, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    .line 330
    :cond_4
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->put(ILcom/android/server/audio/MusicFxHelper$PackageSessions;)V

    goto :goto_1

    .line 328
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->remove(I)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final handleAudioEffectSessionOpen(ILjava/lang/String;I)Z
    .locals 4

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " open MusicFx session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.MusicFxHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;

    if-eqz v0, :cond_1

    .line 272
    iget-object v2, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 273
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 274
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Audio session "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " already open for UID: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", abort"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 278
    :cond_0
    iget-object v2, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 279
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Inconsistency package names for UID open: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " prev: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", now: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 285
    :cond_1
    new-instance v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/audio/MusicFxHelper$PackageSessions;-><init>(Lcom/android/server/audio/MusicFxHelper-IA;)V

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    .line 287
    iput-object p2, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mPackageName:Ljava/lang/String;

    .line 290
    :cond_2
    iget-object p2, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->put(ILcom/android/server/audio/MusicFxHelper$PackageSessions;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final handleEffectClientUidGone(I)V
    .locals 7

    .line 384
    iget-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_0
    const-string v1, "AS.MusicFxHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle MSG_EFFECT_CLIENT_GONE uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mapSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    .line 386
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/MusicFxHelper$PackageSessions;

    if-eqz v1, :cond_1

    .line 390
    const-string v2, "AS.MusicFxHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " gone, closing all sessions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v2, v1, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 394
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    const-string v5, "android.media.extra.PACKAGE_NAME"

    iget-object v6, v1, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v5, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v3, 0x20

    .line 398
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 400
    const-string v3, "com.android.musicfx"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget-object v3, p0, Lcom/android/server/audio/MusicFxHelper;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 403
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->remove(I)V

    .line 405
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 410
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x44d

    const-string v2, "AS.MusicFxHelper"

    if-eq v0, v1, :cond_0

    .line 416
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected msg to handle in MusicFxHelper: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 412
    :cond_0
    const-string v0, " handle MSG_EFFECT_CLIENT_GONE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MusicFxHelper;->handleEffectClientUidGone(I)V

    return-void
.end method

.method public final setMusicFxServiceWithObserver(Landroid/content/Intent;ILjava/lang/String;)Z
    .locals 3

    .line 347
    const-string v0, "android.media.extra.AUDIO_SESSION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    const-string p0, "AS.MusicFxHelper"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " intent have no invalid audio session"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 356
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/audio/MusicFxHelper;->handleAudioEffectSessionOpen(ILjava/lang/String;I)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/audio/MusicFxHelper;->handleAudioEffectSessionClose(ILjava/lang/String;I)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 360
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

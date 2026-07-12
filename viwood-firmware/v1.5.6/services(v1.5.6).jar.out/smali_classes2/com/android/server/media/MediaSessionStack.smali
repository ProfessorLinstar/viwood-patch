.class public Lcom/android/server/media/MediaSessionStack;
.super Ljava/lang/Object;
.source "MediaSessionStack.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field public final mCachedActiveLists:Landroid/util/SparseArray;

.field public mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

.field public final mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

.field public final mSessions:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 75
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 76
    iput-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    return-void
.end method

.method public static getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p1, p1, 0x4

    .line 433
    array-length v0, p0

    if-lt p1, v0, :cond_0

    .line 434
    const-string p0, "<bottom of call stack>"

    return-object p0

    .line 436
    :cond_0
    aget-object p0, p0, p1

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCallers(I)Ljava/lang/String;
    .locals 4

    .line 422
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 425
    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionStack;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 2

    .line 85
    const-string v0, "addSession to bottom of stack | record: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionStack"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    return-void
.end method

.method public final clearCache(I)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 417
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public contains(Lcom/android/server/media/MediaSessionRecordImpl;)Z
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Media button session is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Sessions Stack - have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 358
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 359
    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecordImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 255
    instance-of v3, v2, Lcom/android/server/media/MediaSession2Record;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 260
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 261
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result v3

    .line 260
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getActiveSessions(I)Ljava/util/List;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 287
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object v0

    .line 288
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 3

    const/4 v0, 0x1

    .line 342
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object p0

    .line 344
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 346
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 347
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackTypeLocal()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 330
    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object p0

    .line 331
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 333
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 334
    invoke-virtual {v3, v1}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->canHandleVolumeKey()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMediaButtonSession()Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    return-object p0
.end method

.method public getMediaSessionRecord(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .locals 2

    .line 133
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 134
    instance-of v1, v0, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    .line 136
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPriorityList(ZI)Ljava/util/List;
    .locals 5

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 383
    instance-of v4, v3, Lcom/android/server/media/MediaSessionRecord;

    if-nez v4, :cond_1

    goto :goto_0

    .line 386
    :cond_1
    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    const/4 v4, -0x1

    if-eq p2, v4, :cond_2

    .line 388
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v4

    if-eq p2, v4, :cond_2

    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez p1, :cond_0

    .line 397
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    .line 402
    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 403
    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v1, 0x1

    .line 406
    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v1, v4

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public getSession2Tokens(I)Ljava/util/List;
    .locals 3

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecordImpl;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 303
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 304
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/android/server/media/MediaSession2Record;

    if-eqz v2, :cond_0

    .line 306
    check-cast v1, Lcom/android/server/media/MediaSession2Record;

    .line 307
    invoke-virtual {v1}, Lcom/android/server/media/MediaSession2Record;->getSession2Token()Landroid/media/Session2Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public onPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 153
    const-string/jumbo p2, "onPlaybackStateChanged - Pushing session to top | record: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaSessionStack"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 158
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 159
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 166
    :cond_0
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 168
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object p1

    .line 169
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-eq p1, p2, :cond_1

    .line 170
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getSessionPolicies()I

    move-result p2

    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_1

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    :cond_1
    return-void
.end method

.method public onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 0

    .line 187
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 2

    .line 104
    const-string/jumbo v0, "removeSession | record: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionStack"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    return-void
.end method

.method public updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 324
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 325
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    invoke-interface {p0, v0, p1}, Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;->onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecordImpl;Lcom/android/server/media/MediaSessionRecordImpl;)V

    return-void
.end method

.method public updateMediaButtonSessionBySessionPolicyChange(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1

    .line 233
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getSessionPolicies()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    :cond_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    return-void
.end method

.method public updateMediaButtonSessionIfNeeded()V
    .locals 10

    .line 197
    sget-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    const/4 v1, 0x2

    const-string v2, "MediaSessionStack"

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMediaButtonSessionIfNeeded, callers="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionStack;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 201
    invoke-virtual {v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->getSortedAudioPlaybackClientUids()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    .line 202
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 203
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 204
    invoke-virtual {p0, v5}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v6

    if-nez v6, :cond_1

    .line 206
    sget-boolean v6, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateMediaButtonSessionIfNeeded, skipping uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 214
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecordImpl;->getSessionPolicies()I

    move-result v7

    and-int/2addr v7, v1

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v3

    .line 216
    :goto_1
    sget-boolean v8, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateMediaButtonSessionIfNeeded, checking uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mediaButtonSession="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", ignoreButtonSession="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v7, :cond_4

    .line 222
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/AudioPlayerStateMonitor;->cleanUpAudioPlaybackUids(I)V

    .line 223
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-eq v6, v0, :cond_5

    .line 224
    invoke-virtual {p0, v6}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    return-void

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

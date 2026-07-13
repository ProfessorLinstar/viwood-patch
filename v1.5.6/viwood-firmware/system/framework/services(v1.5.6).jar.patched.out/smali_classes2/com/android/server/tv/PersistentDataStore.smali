.class public final Lcom/android/server/tv/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;

.field public final mBlockedRatings:Ljava/util/List;

.field public mBlockedRatingsChanged:Z

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mLoaded:Z

.field public mParentalControlsEnabled:Z

.field public mParentalControlsEnabledChanged:Z

.field public final mSaveRunnable:Ljava/lang/Runnable;


# direct methods
.method public static bridge synthetic -$$Nest$msave(Lcom/android/server/tv/PersistentDataStore;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->save()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    .line 185
    new-instance v0, Lcom/android/server/tv/PersistentDataStore$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/PersistentDataStore$1;-><init>(Lcom/android/server/tv/PersistentDataStore;)V

    iput-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User dir cannot be created: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_1
    :goto_0
    new-instance p2, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "tv-input-manager-state.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p1, "tv-input-state"

    invoke-direct {p2, v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    return-void
.end method


# virtual methods
.method public addBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    :cond_0
    return-void
.end method

.method public final broadcastChangesIfNeeded()V
    .locals 4

    .line 216
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 217
    iput-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    .line 218
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 221
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    if-eqz v0, :cond_1

    .line 222
    iput-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 223
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.tv.action.BLOCKED_RATINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method public final clearState()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    return-void
.end method

.method public getBlockedRatings()[Landroid/media/tv/TvContentRating;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 121
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/media/tv/TvContentRating;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/media/tv/TvContentRating;

    return-object p0
.end method

.method public isParentalControlsEnabled()Z
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 95
    iget-boolean p0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    return p0
.end method

.method public isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 109
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvContentRating;

    .line 111
    invoke-virtual {p1, v1}, Landroid/media/tv/TvContentRating;->contains(Landroid/media/tv/TvContentRating;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    .line 112
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 115
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final load()V
    .locals 4

    .line 155
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->clearState()V

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 167
    invoke-virtual {p0, v1}, Lcom/android/server/tv/PersistentDataStore;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 169
    :try_start_2
    const-string v2, "TvInputManagerService"

    const-string v3, "Failed to load tv input manager persistent store data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->clearState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 173
    throw p0

    :catch_1
    :goto_1
    return-void
.end method

.method public final loadBlockedRatingsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 3

    .line 250
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 251
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rating"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 253
    const-string/jumbo v2, "string"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-static {v1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Missing string attribute on rating"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 3

    .line 237
    const-string/jumbo v0, "tv-input-manager-state"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 238
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 239
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "blocked-ratings"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/server/tv/PersistentDataStore;->loadBlockedRatingsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_0

    .line 242
    :cond_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "parental-controls"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 243
    const-string v2, "enabled"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final loadIfNeeded()V
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mLoaded:Z

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->load()V

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mLoaded:Z

    :cond_0
    return-void
.end method

.method public final postSave()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    :cond_0
    return-void
.end method

.method public final save()V
    .locals 2

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    .line 199
    invoke-virtual {p0, v1}, Lcom/android/server/tv/PersistentDataStore;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 200
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->broadcastChangesIfNeeded()V

    return-void

    :catchall_0
    move-exception v1

    .line 207
    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 209
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 211
    const-string v0, "TvInputManagerService"

    const-string v1, "Failed to save tv input manager persistent store data."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5

    .line 264
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 265
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 266
    const-string/jumbo v0, "tv-input-manager-state"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 267
    const-string v0, "blocked-ratings"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/TvContentRating;

    .line 270
    const-string/jumbo v4, "rating"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    const-string/jumbo v4, "string"

    invoke-virtual {v3}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    const-string/jumbo v3, "rating"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 274
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    const-string v0, "blocked-ratings"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    const-string/jumbo v0, "parental-controls"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    const-string v0, "enabled"

    iget-boolean p0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    invoke-interface {p1, v1, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    const-string/jumbo p0, "parental-controls"

    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    const-string/jumbo p0, "tv-input-manager-state"

    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void

    .line 274
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setParentalControlsEnabled(Z)V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    .line 100
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 101
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    :cond_0
    return-void
.end method

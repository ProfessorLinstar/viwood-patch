.class public Lcom/android/server/app/GameManagerSettings;
.super Ljava/lang/Object;
.source "GameManagerSettings.java"


# instance fields
.field public final mConfigOverrides:Landroid/util/ArrayMap;

.field public final mGameModes:Landroid/util/ArrayMap;

.field final mSettingsFile:Landroid/util/AtomicFile;

.field public final mSystemDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    .line 82
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSystemDir:Ljava/io/File;

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1fd

    const/4 v2, -0x1

    invoke-static {p1, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 88
    new-instance p1, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "game-manager-service.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    return-void
.end method


# virtual methods
.method public getConfigOverrideLocked(Ljava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    return-object p0
.end method

.method public getGameModeLocked(Ljava/lang/String;)I
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 97
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    return p0

    :cond_1
    return v1
.end method

.method public final readGameModeConfig(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)V
    .locals 7

    .line 301
    const-string/jumbo p0, "loadingBoost"

    const-string/jumbo v0, "useAngle"

    const-string/jumbo v1, "scaling"

    const-string v2, "gameMode"

    const-string v3, "GameManagerService_GameManagerSettings"

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p1, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 308
    invoke-virtual {p2, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOrAddDefaultGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p2

    .line 311
    :try_start_1
    invoke-interface {p1, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    .line 312
    invoke-virtual {p2, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setScaling(F)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 314
    invoke-interface {p1, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid scaling value in config tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    :cond_0
    :goto_0
    const-string v1, "fps"

    invoke-interface {p1, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 321
    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {p2, v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setFpsStr(Ljava/lang/String;)V

    .line 324
    :try_start_2
    invoke-interface {p1, v4, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 325
    invoke-virtual {p2, v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setUseAngle(Z)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 327
    invoke-interface {p1, v4, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid useAngle value in config tag: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    :cond_2
    :goto_2
    :try_start_3
    invoke-interface {p1, v4, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 335
    invoke-virtual {p2, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->setLoadingBoostDuration(I)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 337
    invoke-interface {p1, v4, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid loading boost in config tag: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    return-void

    :catch_3
    move-exception p0

    .line 303
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid game mode value in config tag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final readPackage(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 8

    .line 262
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v2, "GameManagerService_GameManagerSettings"

    if-nez v0, :cond_0

    .line 264
    const-string p0, "No package name found in package tag"

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    .line 269
    :cond_0
    :try_start_0
    const-string v3, "gameMode"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 270
    iget-object v3, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No game mode selected by user for package"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 276
    new-instance v3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-direct {v3, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Ljava/lang/String;)V

    .line 277
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 279
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_5

    :cond_2
    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 283
    :cond_3
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 284
    const-string v6, "gameModeConfig"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 285
    invoke-virtual {p0, p1, v3}, Lcom/android/server/app/GameManagerSettings;->readGameModeConfig(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)V

    goto :goto_1

    .line 287
    :cond_4
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under package tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with type: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 292
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->hasActiveGameModeConfig()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 293
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public readPersistentDataLocked()Z
    .locals 11

    .line 217
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 219
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GameManagerService_GameManagerSettings"

    if-nez v0, :cond_0

    .line 220
    const-string p0, "Settings file doesn\'t exist, skip reading"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 224
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    .line 227
    :goto_0
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    if-eq v4, v6, :cond_3

    .line 232
    const-string p0, "No start tag found in game manager settings"

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 252
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_2
    return v1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 236
    :cond_3
    :try_start_3
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 237
    :cond_4
    :goto_1
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v5, :cond_8

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 238
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v4, :cond_8

    :cond_5
    if-eq v7, v8, :cond_4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    goto :goto_1

    .line 243
    :cond_6
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-ne v7, v6, :cond_7

    .line 244
    const-string/jumbo v9, "package"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 245
    invoke-virtual {p0, v3}, Lcom/android/server/app/GameManagerSettings;->readPackage(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_1

    .line 247
    :cond_7
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 248
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under packages tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " with type: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    .line 252
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_9
    return v5

    :goto_2
    if-eqz v0, :cond_a

    .line 224
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    throw p0
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 253
    :goto_4
    const-string v0, "Error reading game manager settings"

    invoke-static {v2, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public removeConfigOverrideLocked(Ljava/lang/String;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeGameLocked(Ljava/lang/String;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setConfigOverrideLocked(Ljava/lang/String;Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setGameModeLocked(Ljava/lang/String;I)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final writeGameModeConfigTags(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)V
    .locals 7

    if-nez p2, :cond_0

    goto :goto_1

    .line 196
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object p0

    .line 197
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p0, v1

    .line 198
    invoke-virtual {p2, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    .line 200
    const-string v5, "gameModeConfig"

    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    const-string v6, "gameMode"

    invoke-interface {p1, v4, v6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    const-string/jumbo v2, "useAngle"

    invoke-virtual {v3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getUseAngle()Z

    move-result v6

    invoke-interface {p1, v4, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    const-string v2, "fps"

    invoke-virtual {v3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFpsStr()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    const-string/jumbo v2, "scaling"

    invoke-virtual {v3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v6

    invoke-interface {p1, v4, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    const-string/jumbo v2, "loadingBoost"

    .line 206
    invoke-virtual {v3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getLoadingBoostDuration()I

    move-result v3

    .line 205
    invoke-interface {p1, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public writePersistentDataLocked()V
    .locals 9

    .line 153
    const-string/jumbo v0, "package"

    const-string/jumbo v1, "packages"

    const/4 v2, 0x0

    .line 155
    :try_start_0
    iget-object v3, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v4

    .line 158
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 159
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 161
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    new-instance v5, Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 163
    iget-object v6, p0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 165
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    const-string/jumbo v7, "name"

    invoke-interface {v4, v2, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    iget-object v7, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    const-string v7, "gameMode"

    iget-object v8, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v4, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    .line 170
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-virtual {p0, v4, v6}, Lcom/android/server/app/GameManagerSettings;->writeGameModeConfigTags(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)V

    .line 171
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 173
    :cond_1
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 177
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_1
    move-exception v0

    .line 185
    :goto_2
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 186
    const-string p0, "GameManagerService_GameManagerSettings"

    const-string v1, "Unable to write game manager service settings, current changes will be lost at reboot"

    invoke-static {p0, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

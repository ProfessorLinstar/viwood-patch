.class public Lcom/android/server/wm/DisplayWindowSettingsProvider;
.super Ljava/lang/Object;
.source "DisplayWindowSettingsProvider.java"

# interfaces
.implements Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;


# instance fields
.field public mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

.field public mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;


# direct methods
.method public static synthetic $r8$lambda$b0RL9JPXUM35c9H8FLHfRJnOKvU(Ljava/util/function/Consumer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 171
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 174
    iget p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->getPossibleDisplayInfoLocked(I)Ljava/util/List;

    move-result-object p1

    .line 175
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 177
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/DisplayInfo;

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$eM_ZFLJ2IWWSfNJX2VvEsDuGSdI(Lcom/android/server/wm/DisplayWindowSettingsProvider;Ljava/util/Set;Landroid/view/DisplayInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->lambda$removeStaleDisplaySettingsLocked$0(Ljava/util/Set;Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smreadSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->readSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smwriteSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->writeSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 102
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    invoke-static {}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getVendorSettingsFile()Landroid/util/AtomicFile;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;-><init>(Landroid/util/AtomicFile;)V

    new-instance v1, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    const/4 v2, 0x0

    .line 103
    invoke-static {v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettingsFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;-><init>(Landroid/util/AtomicFile;)V

    .line 102
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    .line 110
    new-instance p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-direct {p1, p2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    return-void
.end method

.method public static getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 491
    :try_start_0
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method public static getIntAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 474
    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 481
    :try_start_0
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method public static getOverrideSettingsFileForUser(I)Landroid/util/AtomicFile;
    .locals 2

    if-nez p0, :cond_0

    .line 400
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 401
    :cond_0
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    .line 402
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v1, "system/display_settings.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    new-instance p0, Landroid/util/AtomicFile;

    const-string v1, "wm-displays"

    invoke-direct {p0, v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getVendorSettingsFile()Landroid/util/AtomicFile;
    .locals 3

    .line 387
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/display_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 394
    :cond_0
    new-instance v1, Landroid/util/AtomicFile;

    const-string v2, "wm-displays"

    invoke-direct {v1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static readConfig(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V
    .locals 2

    .line 550
    const-string v0, "identifier"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mIdentifierType:I

    .line 552
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public static readDisplay(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V
    .locals 6

    .line 499
    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 501
    new-instance v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>()V

    .line 502
    const-string v3, "windowingMode"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 504
    const-string v3, "userRotationMode"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 506
    const-string v3, "userRotation"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 508
    const-string v3, "forcedWidth"

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 510
    const-string v3, "forcedHeight"

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 512
    const-string v3, "forcedDensity"

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 514
    const-string v3, "forcedDensityRatio"

    const/4 v5, 0x0

    invoke-interface {p0, v1, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensityRatio:F

    .line 516
    const-string v3, "forcedScalingMode"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 518
    const-string v3, "removeContentMode"

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 520
    const-string v3, "shouldShowWithInsecureKeyguard"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 522
    const-string v3, "shouldShowSystemDecors"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 524
    const-string v3, "shouldShowIme"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 527
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    goto :goto_0

    .line 530
    :cond_0
    const-string v3, "imePolicy"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 533
    :goto_0
    const-string v3, "fixedToUserRotation"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 535
    const-string v3, "ignoreOrientationRequest"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 537
    const-string v3, "ignoreDisplayCutout"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 539
    const-string v3, "dontMoveToTop"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 542
    iget-object p1, p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public static readSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;
    .locals 9

    .line 410
    const-string v0, "Failed parsing "

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;->openRead()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    .line 415
    new-instance v3, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;

    invoke-direct {v3, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider-IA;)V

    .line 418
    :try_start_1
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 420
    :goto_0
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne v4, v6, :cond_7

    .line 429
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 430
    :cond_1
    :goto_1
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 431
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    goto/16 :goto_5

    :catch_2
    move-exception v2

    goto/16 :goto_6

    :catch_3
    move-exception v2

    goto/16 :goto_7

    :catch_4
    move-exception v2

    goto/16 :goto_8

    :catch_5
    move-exception v2

    goto/16 :goto_9

    :cond_2
    :goto_2
    if-eq v6, v7, :cond_1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    goto :goto_1

    .line 436
    :cond_3
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 437
    const-string v7, "display"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 438
    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->readDisplay(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V

    goto :goto_1

    .line 439
    :cond_4
    const-string v7, "config"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 440
    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->readConfig(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V

    goto :goto_1

    .line 442
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <display-settings>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 442
    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 462
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    goto/16 :goto_b

    .line 426
    :cond_7
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "no start tag found"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 459
    :goto_3
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 462
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_a

    .line 457
    :goto_5
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 455
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 453
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 451
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 449
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 467
    :catch_6
    :goto_a
    iget-object p0, v3, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :catch_7
    :goto_b
    return-object v3

    .line 462
    :goto_c
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 465
    :catch_8
    throw v0

    .line 412
    :catch_9
    const-string p0, "No existing display settings, starting empty"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static writeSettings(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V
    .locals 10

    .line 559
    const-string v0, "WindowManager"

    const-string v1, "display"

    const-string v2, "config"

    const-string v3, "display-settings"

    :try_start_0
    invoke-interface {p0}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;->startWrite()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    .line 567
    :try_start_1
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v6

    .line 568
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 570
    invoke-interface {v6, v8, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 572
    invoke-interface {v6, v8, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 573
    const-string v7, "identifier"

    iget v9, p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mIdentifierType:I

    invoke-interface {v6, v8, v7, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 574
    invoke-interface {v6, v8, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 577
    iget-object p1, p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 578
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 579
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 580
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    invoke-interface {v6, v8, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 585
    const-string v9, "name"

    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 586
    iget v7, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    if-eqz v7, :cond_1

    .line 587
    const-string v9, "windowingMode"

    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 589
    :cond_1
    :goto_1
    iget-object v7, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 590
    const-string v9, "userRotationMode"

    .line 591
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 590
    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 593
    :cond_2
    iget-object v7, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    if-eqz v7, :cond_3

    .line 594
    const-string v9, "userRotation"

    .line 595
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 594
    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 597
    :cond_3
    iget v7, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    if-eqz v7, :cond_4

    iget v9, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    if-eqz v9, :cond_4

    .line 598
    const-string v9, "forcedWidth"

    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 599
    const-string v7, "forcedHeight"

    iget v9, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    invoke-interface {v6, v8, v7, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 601
    :cond_4
    iget v7, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    if-eqz v7, :cond_5

    .line 602
    const-string v9, "forcedDensity"

    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    :cond_5
    iget v7, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensityRatio:F

    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-eqz v9, :cond_6

    .line 605
    const-string v9, "forcedDensityRatio"

    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    :cond_6
    iget-object v7, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    if-eqz v7, :cond_7

    .line 609
    const-string v9, "forcedScalingMode"

    .line 610
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 609
    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 612
    :cond_7
    iget v7, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    if-eqz v7, :cond_8

    .line 613
    const-string v9, "removeContentMode"

    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 615
    :cond_8
    iget-object v7, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    if-eqz v7, :cond_9

    .line 616
    const-string v9, "shouldShowWithInsecureKeyguard"

    .line 617
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 616
    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 619
    :cond_9
    iget-object v7, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    if-eqz v7, :cond_a

    .line 620
    const-string v9, "shouldShowSystemDecors"

    .line 621
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 620
    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    :cond_a
    iget-object v7, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    if-eqz v7, :cond_b

    .line 624
    const-string v9, "imePolicy"

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 626
    :cond_b
    iget-object v7, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    if-eqz v7, :cond_c

    .line 627
    const-string v9, "fixedToUserRotation"

    .line 628
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 627
    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 630
    :cond_c
    iget-object v7, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    if-eqz v7, :cond_d

    .line 631
    const-string v9, "ignoreOrientationRequest"

    .line 632
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 631
    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 634
    :cond_d
    iget-object v7, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    if-eqz v7, :cond_e

    .line 635
    const-string v9, "ignoreDisplayCutout"

    .line 636
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 635
    invoke-interface {v6, v8, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 638
    :cond_e
    iget-object v2, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    .line 639
    const-string v7, "dontMoveToTop"

    .line 640
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 639
    invoke-interface {v6, v8, v7, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 642
    :cond_f
    invoke-interface {v6, v8, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 645
    :cond_10
    invoke-interface {v6, v8, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 646
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 651
    invoke-interface {p0, v4, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;->finishWrite(Ljava/io/OutputStream;Z)V

    return-void

    .line 649
    :goto_2
    :try_start_2
    const-string v1, "Failed to write display window settings."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 651
    invoke-interface {p0, v4, v5}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;->finishWrite(Ljava/io/OutputStream;Z)V

    return-void

    :goto_3
    invoke-interface {p0, v4, v5}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 652
    throw p1

    :catch_1
    move-exception p0

    .line 561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to write display settings: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearDisplaySettings(Landroid/view/DisplayInfo;)V
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->clearDisplaySettings(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    .locals 1

    .line 210
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->getOrCreateSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-object v0
.end method

.method public getOverrideSettingsSize()I
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    return p0
.end method

.method public getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->getSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 197
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->getOrCreateSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p0

    if-nez v0, :cond_0

    .line 199
    new-instance p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-object p1

    .line 201
    :cond_0
    new-instance p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    invoke-direct {p1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 202
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->updateFrom(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)Z

    return-object p1
.end method

.method public final synthetic lambda$removeStaleDisplaySettingsLocked$0(Ljava/util/Set;Landroid/view/DisplayInfo;)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDisplayRemoved(Landroid/view/DisplayInfo;)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->onDisplayRemoved(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public removeStaleDisplaySettingsLocked(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/RootWindowContainer;)V
    .locals 3

    .line 164
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 165
    new-instance v1, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider;Ljava/util/Set;)V

    .line 167
    new-instance v2, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {p2, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 180
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->removeStaleDisplaySettings(Ljava/util/Set;)V

    return-void
.end method

.method public setBaseSettingsFilePath(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    new-instance p1, Landroid/util/AtomicFile;

    const-string v1, "wm-displays"

    invoke-direct {p1, v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display settings "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist, using vendor defaults"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getVendorSettingsFile()Landroid/util/AtomicFile;

    move-result-object p1

    .line 128
    :goto_1
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;-><init>(Landroid/util/AtomicFile;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->setBaseSettingsStorage(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V

    return-void
.end method

.method public setBaseSettingsStorage(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V
    .locals 1

    .line 138
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettings;

    return-void
.end method

.method public setOverrideSettingsForUser(I)V
    .locals 1

    .line 147
    invoke-static {p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettingsFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p1

    .line 148
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;-><init>(Landroid/util/AtomicFile;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->setOverrideSettingsStorage(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V

    return-void
.end method

.method public setOverrideSettingsStorage(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V
    .locals 1

    .line 190
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    return-void
.end method

.method public updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->updateSettingsEntry(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

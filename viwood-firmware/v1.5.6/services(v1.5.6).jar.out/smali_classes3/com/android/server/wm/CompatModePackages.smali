.class public final Lcom/android/server/wm/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# instance fields
.field public final mFile:Landroid/util/AtomicFile;

.field public final mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

.field public final mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

.field public final mPackages:Ljava/util/HashMap;

.field public final mProviders:Landroid/util/SparseArray;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public static synthetic $r8$lambda$fyPfwk2sJupIgrgLWv4GKb8kRIc(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 1

    .line 747
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 749
    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 750
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 751
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 753
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 754
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->updateGlobalScale()V

    :cond_1
    return-void
.end method

.method public static bridge synthetic -$$Nest$msaveCompatModes(Lcom/android/server/wm/CompatModePackages;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/CompatModePackages;->saveCompatModes()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .locals 7

    .line 356
    const-string v0, "Error reading compat-packages"

    const-string v1, "ActivityTaskManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 351
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    .line 354
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mProviders:Landroid/util/SparseArray;

    .line 357
    iput-object p1, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 358
    new-instance p1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "packages-compat.xml"

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p2, "compat-mode"

    invoke-direct {p1, v2, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 359
    new-instance p2, Lcom/android/server/wm/CompatModePackages$CompatHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/android/server/wm/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/wm/CompatModePackages;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const/4 p2, 0x0

    .line 363
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 364
    :try_start_1
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p3

    .line 365
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    .line 368
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p2, p1

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object p2, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p2, p1

    goto :goto_4

    :cond_0
    if-ne v2, v3, :cond_1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 374
    :cond_1
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 375
    const-string v5, "compat-packages"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 376
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    :cond_2
    if-ne v2, v4, :cond_3

    .line 379
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 381
    const-string v5, "pkg"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 382
    const-string v2, "name"

    invoke-interface {p3, p2, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 384
    const-string v5, "mode"

    const/4 v6, 0x0

    invoke-interface {p3, p2, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 385
    iget-object v6, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_3
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_2

    :cond_4
    if-eqz p1, :cond_6

    .line 400
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    return-void

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    :goto_2
    if-eqz p2, :cond_5

    .line 396
    :try_start_3
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    if-eqz p2, :cond_6

    .line 400
    :goto_3
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_3
    move-exception p0

    .line 394
    :goto_4
    :try_start_5
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_6

    goto :goto_3

    :catch_4
    :cond_6
    :goto_5
    return-void

    :goto_6
    if-eqz p2, :cond_7

    .line 400
    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 404
    :catch_5
    :cond_7
    throw p0
.end method

.method public static getScalingFactor(Ljava/lang/String;Landroid/os/UserHandle;)F
    .locals 2

    const-wide/32 v0, 0xae57a6b

    .line 589
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x3f666666    # 0.9f

    return p0

    :cond_0
    const-wide/32 v0, 0xb52b546

    .line 592
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x3f59999a    # 0.85f

    return p0

    :cond_1
    const-wide/32 v0, 0xa8bb021

    .line 595
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x3f4ccccd    # 0.8f

    return p0

    :cond_2
    const-wide/32 v0, 0xb52b573

    .line 598
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p0, 0x3f400000    # 0.75f

    return p0

    :cond_3
    const-wide/32 v0, 0xa8bb06d

    .line 601
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p0, 0x3f333333    # 0.7f

    return p0

    :cond_4
    const-wide/32 v0, 0xb52b550

    .line 604
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p0, 0x3f266666    # 0.65f

    return p0

    :cond_5
    const-wide/32 v0, 0xa8bb033

    .line 607
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_6

    const p0, 0x3f19999a    # 0.6f

    return p0

    :cond_6
    const-wide/32 v0, 0xb52b674

    .line 610
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_7

    const p0, 0x3f0ccccd    # 0.55f

    return p0

    :cond_7
    const-wide/32 v0, 0xa8bb015

    .line 613
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_8
    const-wide/32 v0, 0xb52b576

    .line 616
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_9

    const p0, 0x3ee66666    # 0.45f

    return p0

    :cond_9
    const-wide/32 v0, 0xb52b676

    .line 619
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_a

    const p0, 0x3ecccccd    # 0.4f

    return p0

    :cond_a
    const-wide/32 v0, 0xb52b555

    .line 622
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_b

    const p0, 0x3eb33333    # 0.35f

    return p0

    :cond_b
    const-wide/32 v0, 0xb52b678

    .line 625
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_c

    const p0, 0x3e99999a    # 0.3f

    return p0

    :cond_c
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .locals 7

    .line 476
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageCompatModeEnabledLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    .line 477
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/CompatModePackages;->getCompatScaleFromProvider(Ljava/lang/String;I)Landroid/content/res/CompatibilityInfo$CompatScale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget v1, v0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    :goto_0
    move v5, v1

    goto :goto_1

    .line 480
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/CompatModePackages;->getCompatScale(Ljava/lang/String;IZ)F

    move-result v1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_1

    .line 481
    iget v0, v0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    move v6, v0

    goto :goto_2

    :cond_1
    move v6, v5

    .line 482
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v1, v0

    .line 483
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    iget v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZFF)V

    .line 486
    iget p1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz p1, :cond_3

    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 487
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "android"

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 488
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use legacy screen compat mode: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-object v0

    .line 490
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 491
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_3
    return-object v0
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .locals 2

    .line 632
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, -0x2

    return p0

    .line 636
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 639
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageCompatModeEnabledLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public getCompatScale(Ljava/lang/String;I)F
    .locals 1

    const/4 v0, 0x1

    .line 498
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/CompatModePackages;->getCompatScale(Ljava/lang/String;IZ)F

    move-result p0

    return p0
.end method

.method public final getCompatScale(Ljava/lang/String;IZ)F
    .locals 4

    if-eqz p3, :cond_0

    .line 514
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CompatModePackages;->getCompatScaleFromProvider(Ljava/lang/String;I)Landroid/content/res/CompatibilityInfo$CompatScale;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 516
    iget p0, p3, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    return p0

    .line 519
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    const-wide/32 v0, 0xa09e1d7

    .line 521
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1

    .line 522
    iget-object p3, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowManagerService;->getWmsExt()Lcom/mediatek/server/wm/WmsExt;

    move-result-object p3

    .line 523
    invoke-virtual {p3}, Lcom/mediatek/server/wm/WmsExt;->isAppResolutionTunerAISupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 524
    invoke-virtual {p3, p1}, Lcom/mediatek/server/wm/WmsExt;->getWindowScaleForAI(Ljava/lang/String;)F

    move-result p3

    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-eqz v3, :cond_1

    cmpl-float v3, p3, v2

    if-eqz v3, :cond_1

    return p3

    .line 532
    :cond_1
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    const-wide/32 v0, 0x104e4406

    .line 534
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez p3, :cond_2

    if-eqz v0, :cond_4

    .line 537
    :cond_2
    invoke-static {p1, p2}, Lcom/android/server/wm/CompatModePackages;->getScalingFactor(Ljava/lang/String;Landroid/os/UserHandle;)F

    move-result p3

    cmpl-float v1, p3, v2

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    return p3

    :cond_3
    div-float/2addr v2, p3

    return v2

    .line 545
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    if-eqz p3, :cond_5

    .line 546
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 547
    iget p3, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p3, p3

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p3, v0

    .line 548
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float p0, p0

    mul-float/2addr p0, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p0, p3

    float-to-int p0, p0

    const/16 p3, 0x438

    if-le p0, p3, :cond_5

    const-wide/32 v0, 0x9653d2a

    .line 549
    invoke-static {v0, v1, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_5

    int-to-float p0, p0

    const/high16 p1, 0x44870000    # 1080.0f

    div-float/2addr p0, p1

    return p0

    :cond_5
    return v2
.end method

.method public final getCompatScaleFromProvider(Ljava/lang/String;I)Landroid/content/res/CompatibilityInfo$CompatScale;
    .locals 2

    const/4 v0, 0x0

    .line 502
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/CompatScaleProvider;

    .line 504
    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/CompatScaleProvider;->getCompatScale(Ljava/lang/String;I)Landroid/content/res/CompatibilityInfo$CompatScale;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .locals 0

    .line 644
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getPackageCompatModeEnabledLocked(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 652
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getPackageFlags(Ljava/lang/String;)I
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 413
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .locals 4

    .line 671
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    const/4 p0, -0x3

    return p0

    .line 677
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    return p0
.end method

.method public getPackages()Ljava/util/HashMap;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    return-object p0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 438
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    goto :goto_1

    .line 444
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 446
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    .line 451
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 452
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-virtual {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    :cond_2
    :goto_1
    return-void
.end method

.method public handlePackageDataClearedLocked(Ljava/lang/String;)V
    .locals 0

    .line 418
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method public handlePackageUninstalledLocked(Ljava/lang/String;)V
    .locals 0

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method public registerCompatScaleProvider(ILcom/android/server/wm/CompatScaleProvider;)V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    .line 568
    invoke-static {p1}, Lcom/android/server/wm/CompatScaleProvider;->isValidOrderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 575
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 569
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provided id "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not in range of valid ids for system services ["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 565
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The passed CompatScaleProvider can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 562
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate id provided: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 575
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final removePackage(Ljava/lang/String;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-virtual {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 432
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method

.method public final saveCompatModes()V
    .locals 10

    .line 778
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 779
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 780
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    .line 785
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 786
    :try_start_2
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    .line 787
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 788
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 789
    const-string v4, "compat-packages"

    invoke-interface {v3, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 791
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 792
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 793
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 794
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 795
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 796
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 802
    :try_start_3
    invoke-interface {v4, v6, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-object v7, v0

    :goto_1
    if-nez v7, :cond_1

    goto :goto_0

    .line 808
    :cond_1
    :try_start_4
    invoke-virtual {p0, v7}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    .line 809
    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 812
    :cond_2
    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 815
    :cond_3
    const-string v7, "pkg"

    invoke-interface {v3, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 816
    const-string v7, "name"

    invoke-interface {v3, v0, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 817
    const-string v6, "mode"

    invoke-interface {v3, v0, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 818
    const-string v5, "pkg"

    invoke-interface {v3, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 821
    :cond_4
    const-string v1, "compat-packages"

    invoke-interface {v3, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 822
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 824
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 826
    :goto_2
    const-string v1, "ActivityTaskManager"

    const-string v3, "Error writing compat packages"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_5

    .line 828
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_5
    :goto_3
    return-void

    :catchall_0
    move-exception p0

    .line 780
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final scheduleWrite()V
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 461
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 648
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageFlagLocked(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final setPackageFlagLocked(Ljava/lang/String;IZ)V
    .locals 1

    .line 656
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    if-eqz p3, :cond_0

    not-int p2, p2

    and-int/2addr p2, v0

    goto :goto_0

    :cond_0
    or-int/2addr p2, v0

    :goto_0
    if-eq v0, p2, :cond_2

    if-eqz p2, :cond_1

    .line 660
    iget-object p3, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 662
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    :cond_2
    return-void
.end method

.method public setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .locals 10

    .line 694
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 696
    invoke-virtual {p0, v0}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    .line 699
    const-string v2, "ActivityTaskManager"

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v3, :cond_1

    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    .line 710
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown screen compat mode req #"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    and-int/lit8 p2, v1, 0x2

    if-nez p2, :cond_2

    :cond_1
    or-int/lit8 p2, v1, 0x2

    goto :goto_0

    :cond_2
    and-int/lit8 p2, v1, -0x3

    .line 721
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    .line 722
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v5

    const-string v6, "Ignoring compat mode change of "

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    .line 723
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; compatibility never needed"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v7

    .line 727
    :cond_3
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 728
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; compatibility always needed"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v7

    :cond_4
    if-eq p2, v1, :cond_9

    if-eqz p2, :cond_5

    .line 735
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 737
    :cond_5
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object p1

    .line 743
    invoke-virtual {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 745
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 746
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/CompatModePackages$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2}, Lcom/android/server/wm/CompatModePackages$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 758
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object p0

    .line 759
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_2
    if-ltz v1, :cond_9

    .line 760
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 761
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowProcessController;->containsPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    .line 765
    :cond_6
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 766
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v8, -0x10a45df3f51cef8L

    invoke-static {v6, v8, v9, v7, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 768
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .locals 4

    .line 683
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 687
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 690
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method public useLegacyScreenCompatMode(Ljava/lang/String;)Z
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 472
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

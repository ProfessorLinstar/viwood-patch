.class public Lcom/android/server/wm/AppSnapshotLoader;
.super Ljava/lang/Object;
.source "AppSnapshotLoader.java"


# instance fields
.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    return-void
.end method


# virtual methods
.method public getLegacySnapshotConfig(IFZZ)Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
    .locals 4

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, p0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 102
    invoke-static {p2, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_5

    .line 106
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    const p2, 0x3f19999a    # 0.6f

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    const/high16 p0, 0x3f800000    # 1.0f

    move p2, p0

    :cond_4
    :goto_1
    move p0, v0

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_7

    .line 117
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    if-eqz p4, :cond_4

    mul-float/2addr p2, v1

    goto :goto_1

    :cond_7
    move p0, v0

    move p2, v2

    .line 126
    :goto_2
    new-instance p1, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;-><init>(FZ)V

    return-object p1
.end method

.method public loadTask(IIZ)Landroid/window/TaskSnapshot;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v15, p3

    .line 142
    const-string v3, "WindowManager"

    iget-object v4, v0, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getProtoFile(II)Ljava/io/File;

    move-result-object v4

    .line 143
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const/16 v22, 0x0

    if-nez v5, :cond_0

    return-object v22

    .line 147
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v4

    .line 148
    invoke-static {v4}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object v4

    .line 149
    iget-object v5, v0, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 150
    invoke-virtual {v5, v1, v2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getHighResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v5

    .line 152
    iget v6, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    iget v7, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->legacyScale:F

    .line 153
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    .line 152
    invoke-virtual {v0, v6, v7, v8, v15}, Lcom/android/server/wm/AppSnapshotLoader;->getLegacySnapshotConfig(IFZZ)Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 155
    iget-boolean v8, v6, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mForceLoadReducedJpeg:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :catch_0
    move-object v0, v3

    goto/16 :goto_4

    :cond_1
    move v8, v7

    :goto_0
    if-nez v15, :cond_2

    if-eqz v8, :cond_3

    .line 158
    :cond_2
    iget-object v5, v0, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getLowResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v5

    .line 161
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    return-object v22

    .line 165
    :cond_4
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 167
    iget-object v0, v0, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 166
    invoke-virtual {v0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->use16BitFormat()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    if-nez v0, :cond_5

    .line 167
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 168
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load bitmap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v22

    .line 174
    :cond_6
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 175
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    if-nez v2, :cond_7

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create hardware bitmap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v22

    .line 180
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v8

    if-nez v8, :cond_8

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve gralloc buffer for bitmap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v22

    .line 187
    :cond_8
    iget-object v0, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v6, :cond_9

    .line 192
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v5, v6, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    div-float/2addr v0, v5

    float-to-int v0, v0

    .line 193
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v6, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 194
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    :goto_2
    move-object v0, v2

    move-object v12, v6

    goto :goto_3

    .line 196
    :cond_9
    new-instance v6, Landroid/graphics/Point;

    iget v0, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    iget v5, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    invoke-direct {v6, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2

    .line 199
    :goto_3
    new-instance v2, Landroid/window/TaskSnapshot;

    iget-wide v5, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    move-wide v9, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    move-wide v13, v9

    iget v10, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    iget v11, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    move-wide/from16 v16, v13

    new-instance v13, Landroid/graphics/Rect;

    iget v9, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iget v14, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    move-object/from16 p0, v0

    iget v0, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    move-object/from16 p2, v2

    iget v2, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-direct {v13, v9, v14, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Rect;

    iget v0, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    iget v2, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    iget v9, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v3

    :try_start_1
    iget v3, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    invoke-direct {v14, v0, v2, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v0, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    iget v2, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    iget v3, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    iget-boolean v9, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    iget v4, v4, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->uiMode:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v20, 0x0

    move/from16 v21, v4

    move/from16 v19, v9

    move-object/from16 v9, p0

    move/from16 v23, v2

    move-object/from16 v2, p2

    move-wide/from16 v24, v16

    move/from16 v16, v0

    move/from16 v17, v23

    move-object/from16 v0, v18

    move/from16 v18, v3

    move-wide/from16 v3, v24

    :try_start_2
    invoke-direct/range {v2 .. v21}, Landroid/window/TaskSnapshot;-><init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    :catch_1
    move-object/from16 v0, v18

    .line 208
    :catch_2
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load task snapshot data for Id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v22
.end method

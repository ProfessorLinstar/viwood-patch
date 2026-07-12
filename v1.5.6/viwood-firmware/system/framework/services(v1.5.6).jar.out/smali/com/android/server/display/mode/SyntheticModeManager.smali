.class public Lcom/android/server/display/mode/SyntheticModeManager;
.super Ljava/lang/Object;
.source "SyntheticModeManager.java"


# instance fields
.field public final mHasArrSupportEnabled:Z

.field public final mSynthetic60HzModesEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isSynthetic60HzModesEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/SyntheticModeManager;->mSynthetic60HzModesEnabled:Z

    .line 44
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->hasArrSupportFlag()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/mode/SyntheticModeManager;->mHasArrSupportEnabled:Z

    return-void
.end method


# virtual methods
.method public createAppSupportedModes(Lcom/android/server/display/DisplayDeviceConfig;[Landroid/view/Display$Mode;Z)[Landroid/view/Display$Mode;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 54
    iget-boolean v2, v0, Lcom/android/server/display/mode/SyntheticModeManager;->mHasArrSupportEnabled:Z

    if-eqz v2, :cond_0

    move/from16 v2, p3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDeviceConfig;->isVrrSupportEnabled()Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_8

    .line 55
    iget-boolean v0, v0, Lcom/android/server/display/mode/SyntheticModeManager;->mSynthetic60HzModesEnabled:Z

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 58
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 64
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1
    const/4 v7, 0x1

    if-ge v5, v3, :cond_6

    aget-object v8, v1, v5

    .line 65
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v9

    const v10, 0x42700a3d    # 60.01f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 66
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_2
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    move-result v9

    if-le v9, v6, :cond_3

    .line 69
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    .line 72
    :cond_3
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v9

    const/high16 v10, 0x42700000    # 60.0f

    div-float/2addr v9, v10

    .line 73
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3c23d70a    # 0.01f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    goto :goto_2

    :cond_4
    move v7, v4

    :goto_2
    if-eqz v7, :cond_5

    .line 75
    new-instance v7, Landroid/util/Size;

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v10

    invoke-direct {v7, v9, v10}, Landroid/util/Size;-><init>(II)V

    .line 76
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v8

    .line 75
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 83
    :cond_6
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v9, v6, 0x1

    .line 85
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 86
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, [I

    .line 87
    new-instance v8, Landroid/view/Display$Mode;

    .line 88
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v11

    const/4 v14, 0x1

    new-array v15, v4, [F

    const/high16 v12, 0x42700000    # 60.0f

    const/high16 v13, 0x42700000    # 60.0f

    invoke-direct/range {v8 .. v16}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    .line 87
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v9

    goto :goto_3

    .line 91
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/Display$Mode;

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    return-object v0

    :cond_8
    :goto_4
    return-object v1
.end method

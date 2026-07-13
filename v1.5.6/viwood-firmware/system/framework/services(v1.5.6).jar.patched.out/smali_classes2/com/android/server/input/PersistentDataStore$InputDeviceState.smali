.class public final Lcom/android/server/input/PersistentDataStore$InputDeviceState;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# static fields
.field public static final CALIBRATION_NAME:[Ljava/lang/String;


# instance fields
.field public final mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

.field public final mKeyboardLayoutMap:Ljava/util/Map;

.field public mSelectedKeyboardLayouts:Ljava/util/Set;

.field public final mTouchCalibration:[Landroid/hardware/input/TouchCalibration;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 361
    const-string/jumbo v4, "y_scale"

    const-string/jumbo v5, "y_offset"

    const-string/jumbo v0, "x_scale"

    const-string/jumbo v1, "x_ymix"

    const-string/jumbo v2, "x_offset"

    const-string/jumbo v3, "y_xmix"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 364
    new-array v0, v0, [Landroid/hardware/input/TouchCalibration;

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    .line 365
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

    .line 367
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/PersistentDataStore-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>()V

    return-void
.end method

.method public static stringToSurfaceRotation(Ljava/lang/String;)I
    .locals 3

    .line 573
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 576
    :cond_0
    const-string v0, "90"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 579
    :cond_1
    const-string v0, "180"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 582
    :cond_2
    const-string v0, "270"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 585
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported surface rotation string \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static surfaceRotationToString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 567
    const-string p0, "270"

    return-object p0

    .line 569
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported surface rotation value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_1
    const-string p0, "180"

    return-object p0

    .line 565
    :cond_2
    const-string p0, "90"

    return-object p0

    .line 564
    :cond_3
    const-string p0, "0"

    return-object p0
.end method


# virtual methods
.method public getKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTouchCalibration(I)Landroid/hardware/input/TouchCalibration;
    .locals 1

    .line 373
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 375
    const-string p1, "InputManager"

    const-string v0, "Cannot get touch calibration."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 442
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 443
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 444
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "keyed-keyboard-layout"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "layout"

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 445
    const-string v3, "key"

    invoke-interface {v1, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 450
    invoke-interface {v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 455
    iget-object v5, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 452
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Missing layout attribute on keyed-keyboard-layout."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Missing key attribute on keyed-keyboard-layout."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_3
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "selected-keyboard-layout"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 457
    invoke-interface {v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 462
    iget-object v4, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mSelectedKeyboardLayouts:Ljava/util/Set;

    if-nez v4, :cond_4

    .line 463
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mSelectedKeyboardLayouts:Ljava/util/Set;

    .line 465
    :cond_4
    iget-object v4, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mSelectedKeyboardLayouts:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Missing layout attribute on selected-keyboard-layout."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_6
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "light-info"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 467
    const-string v3, "light-id"

    invoke-interface {v1, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 468
    const-string v4, "light-brightness"

    invoke-interface {v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 469
    iget-object v5, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 470
    :cond_7
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "calibration"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    const-string v3, "format"

    invoke-interface {v1, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    const-string/jumbo v4, "rotation"

    invoke-interface {v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_e

    .line 479
    const-string v5, "affine"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, -0x1

    if-eqz v4, :cond_8

    .line 485
    :try_start_0
    invoke-static {v4}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->stringToSurfaceRotation(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 487
    :catch_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unsupported rotation for calibration."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v4, v3

    .line 492
    :goto_1
    sget-object v5, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    invoke-virtual {v5}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    move-result-object v5

    .line 493
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    .line 494
    :cond_9
    :goto_2
    invoke-static {v1, v6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_b

    .line 495
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 496
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 498
    :goto_3
    array-length v10, v5

    if-ge v8, v10, :cond_9

    sget-object v10, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    array-length v11, v10

    if-ge v8, v11, :cond_9

    .line 499
    aget-object v10, v10, v8

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 500
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v5, v8

    goto :goto_2

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v4, v3, :cond_c

    move v3, v8

    .line 508
    :goto_4
    iget-object v4, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    array-length v12, v4

    if-ge v3, v12, :cond_0

    .line 509
    new-instance v13, Landroid/hardware/input/TouchCalibration;

    aget v14, v5, v8

    aget v15, v5, v11

    aget v16, v5, v10

    aget v17, v5, v9

    aget v18, v5, v7

    aget v19, v5, v6

    invoke-direct/range {v13 .. v19}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    aput-object v13, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 513
    :cond_c
    iget-object v3, v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    new-instance v12, Landroid/hardware/input/TouchCalibration;

    aget v13, v5, v8

    aget v14, v5, v11

    aget v15, v5, v10

    aget v16, v5, v9

    aget v17, v5, v7

    aget v18, v5, v6

    invoke-direct/range {v12 .. v18}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    aput-object v12, v3, v4

    goto/16 :goto_0

    .line 480
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unsupported format for calibration."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Missing format attribute on calibration."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method public removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    .locals 4

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 427
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 428
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 431
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 432
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    .line 433
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 8

    .line 521
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "layout"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 522
    const-string v4, "keyed-keyboard-layout"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 523
    const-string v5, "key"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    iget-object v5, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v3, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 525
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mSelectedKeyboardLayouts:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 529
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 530
    const-string/jumbo v4, "selected-keyboard-layout"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 531
    invoke-interface {p1, v3, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 532
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 536
    :goto_2
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 537
    const-string v2, "light-info"

    invoke-interface {p1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    const-string v5, "light-id"

    invoke-interface {p1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 539
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

    .line 540
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 539
    const-string v5, "light-brightness"

    invoke-interface {p1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 541
    invoke-interface {p1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    .line 544
    :goto_3
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    array-length v4, v2

    if-ge v1, v4, :cond_5

    .line 545
    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    .line 546
    invoke-static {v1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->surfaceRotationToString(I)Ljava/lang/String;

    move-result-object v2

    .line 547
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    move-result-object v4

    .line 549
    const-string v5, "calibration"

    invoke-interface {p1, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 550
    const-string v6, "format"

    const-string v7, "affine"

    invoke-interface {p1, v3, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 551
    const-string/jumbo v6, "rotation"

    invoke-interface {p1, v3, v6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v2, v0

    .line 552
    :goto_4
    array-length v6, v4

    if-ge v2, v6, :cond_3

    sget-object v6, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    array-length v7, v6

    if-ge v2, v7, :cond_3

    .line 553
    aget-object v7, v6, v2

    invoke-interface {p1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 554
    aget v7, v4, v2

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    aget-object v6, v6, v2

    invoke-interface {p1, v3, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 557
    :cond_3
    invoke-interface {p1, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public setKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setSelectedKeyboardLayouts(Ljava/util/Set;)Z
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mSelectedKeyboardLayouts:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 406
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mSelectedKeyboardLayouts:Ljava/util/Set;

    const/4 p0, 0x1

    return p0
.end method

.method public setTouchCalibration(ILandroid/hardware/input/TouchCalibration;)Z
    .locals 2

    const/4 v0, 0x0

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/hardware/input/TouchCalibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aput-object p2, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return v0

    .line 388
    :goto_0
    const-string p1, "InputManager"

    const-string p2, "Cannot set touch calibration."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

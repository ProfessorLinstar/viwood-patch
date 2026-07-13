.class public Lcom/android/server/sensorprivacy/PersistedState;
.super Ljava/lang/Object;
.source "PersistedState.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PersistedState"


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;

.field public mStates:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$7IQf-UpFyGa5zIamP1HgWaOc-kY(Lcom/android/server/sensorprivacy/PersistedState;Landroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/PersistedState;->persist(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/sensorprivacy/PersistedState;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 83
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    .line 84
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/PersistedState;->readState()V

    return-void
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/android/server/sensorprivacy/PersistedState;
    .locals 1

    .line 79
    new-instance v0, Lcom/android/server/sensorprivacy/PersistedState;

    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/PersistedState;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static readPVersion0(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)V
    .locals 2

    .line 180
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 181
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 182
    const-string v0, "individual-sensor-privacy"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string/jumbo v0, "sensor"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 184
    const-string v1, "enabled"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    .line 186
    invoke-static {p1, v0, v1}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->-$$Nest$maddState(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;IZ)V

    .line 187
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static readPVersion1(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)V
    .locals 5

    .line 196
    :cond_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 197
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 199
    const-string/jumbo v0, "user"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 201
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 202
    :cond_1
    :goto_0
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    const-string v3, "individual-sensor-privacy"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    const-string/jumbo v3, "sensor"

    invoke-interface {p0, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 205
    const-string v4, "enabled"

    invoke-interface {p0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 207
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->-$$Nest$maddState(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;IIZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static readPVersion2(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion2;)V
    .locals 9

    .line 217
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 218
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 220
    const-string/jumbo v0, "sensor-state"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string/jumbo v0, "toggle-type"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 222
    const-string/jumbo v0, "user-id"

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 223
    const-string/jumbo v0, "sensor"

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 224
    const-string/jumbo v0, "state-type"

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 225
    const-string v0, "last-change"

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    move-object v2, p1

    .line 227
    invoke-static/range {v2 .. v8}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->-$$Nest$maddState(Lcom/android/server/sensorprivacy/PersistedState$PVersion2;IIIIJ)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 229
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 328
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 329
    iget-object v2, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 331
    iget-object v4, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    iget v4, v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    .line 332
    iget-object v5, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    iget v5, v5, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    .line 333
    iget-object v8, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    iget v8, v8, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    .line 335
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    if-nez v9, :cond_0

    .line 337
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 338
    invoke-virtual {v6, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    :cond_0
    new-instance v5, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v10, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v5, v4, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 343
    :cond_1
    const-class v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 345
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 343
    const-string/jumbo v2, "storage_implementation"

    const-wide v3, 0x10900000004L

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 347
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    .line 349
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 350
    const-string/jumbo v2, "users"

    const-wide v3, 0x20b00000003L

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v10

    .line 351
    const-string/jumbo v2, "user_id"

    const-wide v12, 0x10500000001L

    invoke-virtual {v1, v2, v12, v13, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 352
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/util/SparseArray;

    .line 353
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v15, :cond_2

    .line 355
    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 356
    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 357
    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/sensorprivacy/SensorState;

    .line 358
    const-string/jumbo v5, "sensors"

    move/from16 p0, v8

    const-wide v7, 0x20b00000004L

    invoke-virtual {v1, v5, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    .line 359
    const-string/jumbo v5, "sensor"

    invoke-virtual {v1, v5, v12, v13, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 360
    const-string/jumbo v2, "toggles"

    const-wide v12, 0x20b00000002L

    invoke-virtual {v1, v2, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v12

    .line 361
    const-string/jumbo v2, "toggle_type"

    move-object/from16 v16, v4

    const-wide v4, 0x10e00000004L

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 366
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result v2

    .line 364
    const-string/jumbo v3, "state_type"

    const-wide v4, 0x10e00000005L

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v2, 0x10300000003L

    .line 369
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/sensorprivacy/SensorState;->getLastChange()J

    move-result-wide v4

    .line 367
    const-string v1, "last_change"

    move/from16 v16, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 370
    invoke-virtual {v0, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 371
    invoke-virtual {v0, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v1, v16, 0x1

    move v8, v1

    move-object v1, v0

    move v0, v8

    move/from16 v8, p0

    const-wide v12, 0x10500000001L

    goto :goto_2

    :cond_2
    move-object v0, v1

    move/from16 p0, v8

    .line 373
    invoke-virtual {v0, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public forEachKnownState(Lcom/android/internal/util/function/QuadConsumer;)V
    .locals 6

    .line 378
    iget-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 380
    iget-object v2, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 381
    iget-object v3, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sensorprivacy/SensorState;

    .line 382
    iget v4, v2, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v2, v2, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v4, v5, v2, v3}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getState(III)Lcom/android/server/sensorprivacy/SensorState;
    .locals 1

    .line 235
    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sensorprivacy/SensorState;

    return-object p0
.end method

.method public final persist(Landroid/util/ArrayMap;)V
    .locals 10

    .line 285
    const-string/jumbo v0, "sensor-state"

    const-string/jumbo v1, "sensor-privacy"

    const/4 v2, 0x0

    .line 287
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 288
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v4

    .line 289
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 290
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    const-string/jumbo v5, "persistence-version"

    const/4 v6, 0x2

    invoke-interface {v4, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    const-string/jumbo v5, "version"

    invoke-interface {v4, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    .line 294
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 295
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 296
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sensorprivacy/SensorState;

    .line 299
    iget v8, v6, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    goto :goto_1

    .line 303
    :cond_0
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    const-string/jumbo v8, "toggle-type"

    iget v9, v6, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    invoke-interface {v4, v2, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    const-string/jumbo v8, "user-id"

    iget v9, v6, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    invoke-interface {v4, v2, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    const-string/jumbo v8, "sensor"

    iget v6, v6, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    invoke-interface {v4, v2, v8, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    const-string/jumbo v6, "state-type"

    .line 311
    invoke-virtual {v7}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result v8

    .line 310
    invoke-interface {v4, v2, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 312
    const-string v6, "last-change"

    .line 313
    invoke-virtual {v7}, Lcom/android/server/sensorprivacy/SensorState;->getLastChange()J

    move-result-wide v7

    .line 312
    invoke-interface {v4, v2, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    .line 317
    :cond_1
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 319
    iget-object p1, p0, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_1
    move-exception p1

    .line 321
    :goto_2
    sget-object v0, Lcom/android/server/sensorprivacy/PersistedState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Caught an exception persisting the sensor privacy state: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public final readState()V
    .locals 10

    .line 88
    iget-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    .line 89
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    const-string v2, "Caught an exception reading the state from storage: "

    const-string/jumbo v3, "sensor-privacy"

    if-nez v1, :cond_2

    .line 90
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    .line 91
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "sensor_privacy.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 94
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 97
    :try_start_1
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    .line 98
    invoke-static {v5, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    .line 100
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v1

    goto :goto_2

    :catch_1
    :cond_0
    :goto_0
    move-object v0, v1

    goto :goto_3

    :catchall_0
    move-exception v5

    if-eqz v4, :cond_1

    .line 96
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v9, v4

    move-object v4, v0

    move-object v0, v9

    goto :goto_2

    :cond_1
    :goto_1
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3

    .line 101
    :goto_2
    sget-object v5, Lcom/android/server/sensorprivacy/PersistedState;->LOG_TAG:Ljava/lang/String;

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    move-object v0, v4

    .line 112
    :catch_3
    :cond_2
    :goto_3
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_7

    .line 113
    :try_start_5
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 114
    :try_start_6
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v6

    .line 115
    invoke-static {v6, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v3, "persistence-version"

    const/4 v7, 0x0

    invoke-interface {v6, v5, v3, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    .line 123
    new-instance v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    invoke-direct {v3, v7, v5}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;-><init>(ILcom/android/server/sensorprivacy/PersistedState-IA;)V

    .line 125
    invoke-static {v6, v3}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion0(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v3

    goto :goto_6

    .line 126
    :cond_3
    const-string/jumbo v7, "version"

    const/4 v8, 0x1

    if-ne v3, v8, :cond_4

    .line 127
    :try_start_7
    invoke-interface {v6, v5, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 129
    new-instance v7, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    invoke-direct {v7, v3, v5}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;-><init>(ILcom/android/server/sensorprivacy/PersistedState-IA;)V

    .line 132
    invoke-static {v6, v7}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion1(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)V

    :goto_4
    move-object v3, v7

    goto :goto_5

    :cond_4
    if-ne v3, v4, :cond_5

    .line 134
    invoke-interface {v6, v5, v7, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 136
    new-instance v7, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    invoke-direct {v7, v3, v5}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(ILcom/android/server/sensorprivacy/PersistedState-IA;)V

    .line 139
    invoke-static {v6, v7}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion2(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion2;)V

    goto :goto_4

    .line 141
    :cond_5
    sget-object v6, Lcom/android/server/sensorprivacy/PersistedState;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown persistence version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Deleting."

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v6, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v3, v5

    :goto_5
    if-eqz v1, :cond_8

    .line 148
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :goto_6
    if-eqz v1, :cond_6

    .line 113
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v1

    :try_start_a
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_7
    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    .line 149
    :goto_8
    sget-object v3, Lcom/android/server/sensorprivacy/PersistedState;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    :cond_7
    move-object v3, v5

    :cond_8
    :goto_9
    if-nez v3, :cond_9

    .line 159
    new-instance v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    invoke-direct {v3, v4, v5}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(ILcom/android/server/sensorprivacy/PersistedState-IA;)V

    .line 162
    :cond_9
    instance-of v0, v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    if-eqz v0, :cond_a

    .line 163
    check-cast v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    invoke-static {v3}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->-$$Nest$smfromPVersion0(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    move-result-object v3

    .line 165
    :cond_a
    instance-of v0, v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    if-eqz v0, :cond_b

    .line 166
    check-cast v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    invoke-static {v3}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->-$$Nest$smfromPVersion1(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    move-result-object v3

    .line 168
    :cond_b
    instance-of v0, v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    if-eqz v0, :cond_c

    .line 169
    check-cast v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    .line 170
    invoke-static {v3}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->-$$Nest$fgetmStates(Lcom/android/server/sensorprivacy/PersistedState$PVersion2;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    goto :goto_a

    .line 172
    :cond_c
    sget-object v0, Lcom/android/server/sensorprivacy/PersistedState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "State not successfully upgraded."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    :goto_a
    return-void
.end method

.method public schedulePersist()V
    .locals 6

    .line 273
    iget-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 275
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 277
    new-instance v3, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    iget-object v4, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    invoke-direct {v3, v4}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;)V

    new-instance v4, Lcom/android/server/sensorprivacy/SensorState;

    iget-object v5, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 278
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v4, v5}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Lcom/android/server/sensorprivacy/SensorState;)V

    .line 277
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/sensorprivacy/PersistedState$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/sensorprivacy/PersistedState$$ExternalSyntheticLambda0;-><init>()V

    .line 281
    invoke-static {v2, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 280
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setState(IIILcom/android/server/sensorprivacy/SensorState;)Lcom/android/server/sensorprivacy/SensorState;
    .locals 1

    .line 239
    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    invoke-virtual {p0, v0, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sensorprivacy/SensorState;

    return-object p0
.end method

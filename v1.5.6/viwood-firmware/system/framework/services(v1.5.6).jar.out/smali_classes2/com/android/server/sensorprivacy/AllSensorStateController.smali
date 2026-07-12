.class public Lcom/android/server/sensorprivacy/AllSensorStateController;
.super Ljava/lang/Object;
.source "AllSensorStateController.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AllSensorStateController"

.field public static sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;

.field public mEnabled:Z

.field public mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

.field public mListenerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$xChE0OJhLjTDhwgTSFp_J6v0xhA(Lcom/android/server/sensorprivacy/AllSensorStateController;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/AllSensorStateController;->persist(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 54
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "sensor_privacy.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mAtomicFile:Landroid/util/AtomicFile;

    .line 68
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    .line 71
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 74
    :goto_0
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 75
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 76
    const-string v4, "all-sensor-privacy"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "enabled"

    if-eqz v4, :cond_1

    .line 77
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 78
    invoke-static {v2, v5, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 81
    :cond_1
    const-string/jumbo v4, "sensor-privacy"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    iget-boolean v4, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 83
    invoke-static {v2, v5, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    or-int/2addr v4, v6

    iput-boolean v4, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 85
    :cond_2
    const-string/jumbo v4, "user"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 86
    const-string v3, "id"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    .line 88
    iget-boolean v3, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 89
    invoke-static {v2, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 92
    :cond_3
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 94
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :goto_2
    if-eqz v0, :cond_5

    .line 71
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    .line 95
    :goto_4
    sget-object v2, Lcom/android/server/sensorprivacy/AllSensorStateController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Caught an exception reading the state from storage: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    :cond_6
    :goto_5
    return-void
.end method

.method public static getInstance()Lcom/android/server/sensorprivacy/AllSensorStateController;
    .locals 1

    .line 61
    sget-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-direct {v0}, Lcom/android/server/sensorprivacy/AllSensorStateController;-><init>()V

    sput-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    return-object v0
.end method


# virtual methods
.method public dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 0

    .line 0
    return-void
.end method

.method public getAllSensorStateLocked()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    return p0
.end method

.method public final persist(Z)V
    .locals 5

    .line 130
    const-string v0, "all-sensor-privacy"

    const/4 v1, 0x0

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    .line 134
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 135
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const-string v4, "enabled"

    invoke-interface {v3, v1, v4, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 139
    iget-object p1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 141
    :goto_0
    sget-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Caught an exception persisting the sensor privacy state: "

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    iget-object p0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public schedulePersistLocked()V
    .locals 2

    .line 126
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sensorprivacy/AllSensorStateController;)V

    iget-boolean p0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAllSensorPrivacyListenerLocked(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;)V
    .locals 1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    iget-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

    if-nez v0, :cond_0

    .line 121
    iput-object p2, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

    .line 122
    iput-object p1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListenerHandler:Landroid/os/Handler;

    return-void

    .line 119
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Listener is already set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAllSensorStateLocked(Z)V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 106
    iput-boolean p1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 107
    iget-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mListenerHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

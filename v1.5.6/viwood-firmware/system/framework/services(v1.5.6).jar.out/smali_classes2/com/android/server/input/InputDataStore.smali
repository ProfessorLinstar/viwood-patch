.class public final Lcom/android/server/input/InputDataStore;
.super Ljava/lang/Object;
.source "InputDataStore.java"


# instance fields
.field public final mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    new-instance v0, Lcom/android/server/input/InputDataStore$FileInjector;

    const-string v1, "input_gestures.xml"

    invoke-direct {v0, v1}, Lcom/android/server/input/InputDataStore$FileInjector;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/input/InputDataStore;-><init>(Lcom/android/server/input/InputDataStore$FileInjector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/InputDataStore$FileInjector;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    return-void
.end method


# virtual methods
.method public loadInputGestures(I)Ljava/util/List;
    .locals 4

    .line 89
    const-string v0, "Failed to read from "

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->openRead(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0, v1, v2}, Lcom/android/server/input/InputDataStore;->readInputGesturesXml(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v2

    .line 91
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    .line 105
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->getAtomicFileForUserId(I)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 99
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->getAtomicFileForUserId(I)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputDataStore"

    invoke-static {p1, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 95
    :catch_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final readInputGestureFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/input/InputGestureData;
    .locals 6

    .line 199
    new-instance p0, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {p0}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    .line 200
    const-string v0, "key_gesture_type"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    .line 201
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 203
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    .line 205
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-gt v0, v3, :cond_5

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 213
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "input_gesture"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 221
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 222
    const-string v3, "key_trigger"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 223
    const-string v2, "keycode"

    .line 224
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "modifiers"

    .line 225
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 223
    invoke-static {v2, v3}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    goto :goto_0

    .line 226
    :cond_3
    const-string/jumbo v3, "touchpad_trigger"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 227
    const-string/jumbo v2, "touchpad_gesture_type"

    .line 228
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 227
    invoke-static {v2}, Landroid/hardware/input/InputGestureData;->createTouchpadTrigger(I)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    goto :goto_0

    .line 229
    :cond_4
    const-string v3, "app_launch_data"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    const-string/jumbo v2, "role"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    const-string v3, "category"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    const-string v4, "class_name"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    const-string/jumbo v5, "package_name"

    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-static {v3, v2, v5, v4}, Landroid/hardware/input/AppLaunchData;->createLaunchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {p0, v2}, Landroid/hardware/input/InputGestureData$Builder;->setAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/hardware/input/InputGestureData$Builder;

    goto/16 :goto_0

    .line 206
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parser has left the initial scope of the tag that was being parsed on line number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object p0

    return-object p0
.end method

.method public final readInputGestureListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .locals 5

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 252
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 254
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-gt v1, v3, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 262
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "input_gesture_list"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 270
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 271
    const-string v3, "input_gesture"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputDataStore;->readInputGestureFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/input/InputGestureData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 275
    const-string v3, "InputDataStore"

    const-string v4, "Invalid parameters for input gesture data: "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 255
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parser has left the initial scope of the tag that was being parsed on line number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public readInputGesturesXml(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 2

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 150
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p2

    .line 151
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p2

    .line 156
    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 160
    :cond_2
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 161
    const-string/jumbo v1, "root"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 165
    :cond_3
    const-string v1, "input_gesture_list"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p0, p2}, Lcom/android/server/input/InputDataStore;->readInputGestureListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public saveInputGestures(ILjava/util/List;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    invoke-virtual {v2, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->startWrite(I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 122
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/input/InputDataStore;->writeInputGestureXml(Ljava/io/OutputStream;ZLjava/util/List;)V

    .line 123
    iget-object p2, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v1, v2}, Lcom/android/server/input/InputDataStore$FileInjector;->finishWrite(ILjava/io/FileOutputStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write to file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    .line 126
    invoke-virtual {v3, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->getAtomicFileForUserId(I)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    const-string v3, "InputDataStore"

    invoke-static {v3, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    iget-object p0, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/input/InputDataStore$FileInjector;->finishWrite(ILjava/io/FileOutputStream;Z)V

    return-void
.end method

.method public final writeInputGestureListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    .line 326
    const-string v1, "input_gesture_list"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData;

    .line 328
    invoke-virtual {p0, p1, v2}, Lcom/android/server/input/InputDataStore;->writeInputGestureToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/hardware/input/InputGestureData;)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeInputGestureToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/hardware/input/InputGestureData;)V
    .locals 5

    const/4 p0, 0x0

    .line 285
    const-string v0, "input_gesture"

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v1

    .line 286
    const-string v2, "key_gesture_type"

    invoke-interface {p1, p0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v1

    .line 290
    instance-of v2, v1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    .line 291
    const-string v2, "key_trigger"

    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v3

    const-string v4, "keycode"

    invoke-interface {p1, p0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    const-string/jumbo v3, "modifiers"

    .line 294
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getModifierState()I

    move-result v1

    .line 293
    invoke-interface {p1, p0, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 296
    :cond_0
    instance-of v2, v1, Landroid/hardware/input/InputGestureData$TouchpadTrigger;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/hardware/input/InputGestureData$TouchpadTrigger;

    .line 297
    const-string/jumbo v2, "touchpad_trigger"

    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 298
    const-string/jumbo v3, "touchpad_gesture_type"

    .line 299
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->getTouchpadGestureType()I

    move-result v1

    .line 298
    invoke-interface {p1, p0, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 304
    const-string v1, "app_launch_data"

    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object p2

    .line 306
    instance-of v2, p2, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v2, :cond_2

    check-cast p2, Landroid/hardware/input/AppLaunchData$RoleData;

    .line 307
    const-string/jumbo v2, "role"

    invoke-virtual {p2}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 308
    :cond_2
    instance-of v2, p2, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v2, :cond_3

    .line 309
    check-cast p2, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 310
    const-string v2, "category"

    .line 311
    invoke-virtual {p2}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object p2

    .line 310
    invoke-interface {p1, p0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 312
    :cond_3
    instance-of v2, p2, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz v2, :cond_4

    check-cast p2, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 314
    invoke-virtual {p2}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 313
    const-string/jumbo v3, "package_name"

    invoke-interface {p1, p0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    const-string v2, "class_name"

    .line 316
    invoke-virtual {p2}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object p2

    .line 315
    invoke-interface {p1, p0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    :cond_4
    :goto_1
    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    :cond_5
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeInputGestureXml(Ljava/io/OutputStream;ZLjava/util/List;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 184
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p2

    .line 185
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p2

    .line 190
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 191
    const-string/jumbo p1, "root"

    invoke-interface {p2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    invoke-virtual {p0, p2, p3}, Lcom/android/server/input/InputDataStore;->writeInputGestureListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    .line 193
    invoke-interface {p2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

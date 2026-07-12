.class public final Lcom/android/server/permission/access/permission/DevicePermissionPersistence;
.super Ljava/lang/Object;
.source "DevicePermissionPersistence.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/permission/DevicePermissionPersistence$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/permission/access/permission/DevicePermissionPersistence$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/DevicePermissionPersistence$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->Companion:Lcom/android/server/permission/access/permission/DevicePermissionPersistence$Companion;

    .line 157
    const-class v0, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseAppId(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;)V
    .locals 9

    const/4 v0, 0x0

    .line 180
    const-string v1, "id"

    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 77
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    invoke-static {p2, v1, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 50
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result p2

    const-string v0, "Unexpected event type "

    const/4 v1, 0x2

    if-eqz p2, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result p2

    const/4 v4, 0x3

    if-eq p2, v3, :cond_2

    if-eq p2, v1, :cond_2

    if-eq p2, v4, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result p2

    if-eq p2, v3, :cond_b

    if-eq p2, v1, :cond_4

    if-ne p2, v4, :cond_3

    goto/16 :goto_5

    .line 95
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_4
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result p2

    .line 121
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 81
    const-string v6, "device"

    invoke-static {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, p1, v2}, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->parseDevice(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;)V

    goto :goto_1

    .line 83
    :cond_5
    sget-object v5, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring unknown tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " when parsing permission state"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_1
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, p2, :cond_a

    .line 73
    :cond_6
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v1, :cond_9

    if-ne v5, v4, :cond_8

    .line 77
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, p2, :cond_7

    .line 110
    :goto_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_6

    if-eq v5, v1, :cond_6

    if-eq v5, v4, :cond_6

    goto :goto_2

    .line 110
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result p2

    if-eq p2, v3, :cond_2

    if-eq p2, v1, :cond_2

    if-eq p2, v4, :cond_2

    goto :goto_3

    .line 86
    :cond_8
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_6

    if-eq v5, v1, :cond_6

    if-eq v5, v4, :cond_6

    goto :goto_4

    .line 67
    :cond_a
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected post-block depth "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_5
    return-void
.end method

.method public final parseAppIdDevicePermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 11

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p2, p3, v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p3}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v1

    const-string v2, "Unexpected event type "

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v1

    const-string v6, " when parsing permission state"

    if-eq v1, v5, :cond_b

    if-eq v1, v3, :cond_4

    if-ne v1, v4, :cond_3

    goto/16 :goto_5

    .line 95
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_4
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v1

    .line 121
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 59
    const-string v8, "app-id"

    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->parseAppId(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;)V

    goto :goto_1

    .line 60
    :cond_5
    sget-object v7, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring unknown tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_1
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v1, :cond_a

    .line 73
    :cond_6
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v3, :cond_9

    if-ne v6, v4, :cond_8

    .line 77
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_7

    .line 110
    :goto_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_6

    if-eq v6, v3, :cond_6

    if-eq v6, v4, :cond_6

    goto :goto_2

    .line 110
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v1

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_2

    goto :goto_3

    .line 86
    :cond_8
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_6

    if-eq v6, v3, :cond_6

    if-eq v6, v4, :cond_6

    goto :goto_4

    .line 67
    :cond_a
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected post-block depth "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", expected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_b
    :goto_5
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result p0

    sub-int/2addr p0, v5

    :goto_6
    const/4 p1, -0x1

    if-ge p1, p0, :cond_d

    .line 53
    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result p1

    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    .line 65
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 66
    sget-object v1, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping unknown app ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 68
    invoke-virtual {p3, v5}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    :cond_c
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method public final parseDevice(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;)V
    .locals 9

    const/4 v0, 0x0

    .line 135
    const-string v1, "id"

    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 147
    invoke-virtual {p1, v1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    invoke-virtual {p2, v1, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->put(Ljava/lang/Object;Lcom/android/server/permission/access/immutable/Immutable;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 50
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result p2

    const-string v0, "Unexpected event type "

    const/4 v1, 0x2

    if-eqz p2, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result p2

    const/4 v4, 0x3

    if-eq p2, v3, :cond_2

    if-eq p2, v1, :cond_2

    if-eq p2, v4, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result p2

    if-eq p2, v3, :cond_b

    if-eq p2, v1, :cond_4

    if-ne p2, v4, :cond_3

    goto/16 :goto_5

    .line 95
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_4
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result p2

    .line 121
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 97
    const-string/jumbo v6, "permission"

    invoke-static {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, p1, v2}, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->parsePermission(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    goto :goto_1

    .line 98
    :cond_5
    sget-object v5, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring unknown tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " when parsing permission state"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_1
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, p2, :cond_a

    .line 73
    :cond_6
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v1, :cond_9

    if-ne v5, v4, :cond_8

    .line 77
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, p2, :cond_7

    .line 110
    :goto_2
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_6

    if-eq v5, v1, :cond_6

    if-eq v5, v4, :cond_6

    goto :goto_2

    .line 110
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result p2

    if-eq p2, v3, :cond_2

    if-eq p2, v1, :cond_2

    if-eq p2, v4, :cond_2

    goto :goto_3

    .line 86
    :cond_8
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_6

    if-eq v5, v1, :cond_6

    if-eq v5, v4, :cond_6

    goto :goto_4

    .line 67
    :cond_a
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected post-block depth "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_5
    return-void
.end method

.method public final parsePermission(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V
    .locals 2

    const/4 p0, 0x0

    .line 135
    const-string/jumbo v0, "name"

    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 147
    invoke-virtual {p1, v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intern(...)"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const-string v1, "flags"

    .line 180
    invoke-virtual {p1, p0, v1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 108
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 126
    invoke-virtual {p2, v0, p0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 2

    .line 121
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v1, "app-id-device-permissions"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->parseAppIdDevicePermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    :cond_0
    return-void
.end method

.method public final serializeAppId(Lcom/android/modules/utils/BinaryXmlSerializer;ILcom/android/server/permission/access/immutable/IndexedReferenceMap;)V
    .locals 5

    const/4 v0, 0x0

    .line 53
    const-string v1, "app-id"

    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    const-string v2, "id"

    .line 90
    invoke-virtual {p1, v0, v2, p2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    invoke-virtual {p3}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getSize()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 45
    invoke-virtual {p3, v2}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v2}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    .line 127
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->serializeDevice(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;Lcom/android/server/permission/access/immutable/IndexedMap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializeDevice(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;Lcom/android/server/permission/access/immutable/IndexedMap;)V
    .locals 5

    const/4 v0, 0x0

    .line 53
    const-string v1, "device"

    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    const-string v2, "id"

    .line 69
    invoke-virtual {p1, v0, v2, p2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    invoke-virtual {p3}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 48
    invoke-virtual {p3, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    check-cast v3, Ljava/lang/String;

    .line 138
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->serializePermission(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializePermission(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;I)V
    .locals 2

    const/4 p0, 0x0

    .line 53
    const-string/jumbo v0, "permission"

    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    const-string/jumbo v1, "name"

    .line 69
    invoke-virtual {p1, p0, v1, p2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/high16 p2, 0x200000

    .line 147
    invoke-static {p3, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    .line 148
    invoke-static {p3, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p3

    .line 152
    :cond_0
    const-string p2, "flags"

    .line 90
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .locals 5

    .line 112
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/android/server/permission/access/UserState;

    invoke-virtual {p2}, Lcom/android/server/permission/access/UserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    const/4 p3, 0x0

    .line 53
    const-string v0, "app-id-device-permissions"

    invoke-virtual {p1, p3, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 45
    invoke-virtual {p2, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    .line 115
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;->serializeAppId(Lcom/android/modules/utils/BinaryXmlSerializer;ILcom/android/server/permission/access/immutable/IndexedReferenceMap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1, p3, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

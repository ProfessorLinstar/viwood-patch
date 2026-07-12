.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;
.super Lcom/android/server/biometrics/sensors/BiometricUserState;
.source "FingerprintUserState.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doWriteState(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 7

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    const-string p0, "fingerprints"

    const/4 v1, 0x0

    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 85
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 86
    const-string v4, "fingerprint"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    const-string v4, "fingerId"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    const-string/jumbo v4, "name"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    const-string v4, "groupId"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    const-string v4, "deviceId"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v5

    invoke-interface {p1, v1, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    const-string v3, "fingerprint"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    const-string p0, "fingerprints"

    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :catchall_0
    move-exception p1

    .line 79
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getBiometricsTag()Ljava/lang/String;
    .locals 0

    .line 55
    const-string p0, "fingerprints"

    return-object p0
.end method

.method public getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9

    .line 65
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 67
    new-instance v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v6

    .line 68
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v7

    invoke-direct/range {v3 .. v8}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 67
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getNameTemplateResource()I
    .locals 0

    .line 0
    const p0, 0x1040456

    return p0
.end method

.method public parseBiometricsLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 9

    .line 102
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 104
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 105
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_3

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 110
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    const-string v1, "groupId"

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 114
    const-string v1, "fingerId"

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 115
    const-string v1, "deviceId"

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    .line 116
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-direct/range {v3 .. v8}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

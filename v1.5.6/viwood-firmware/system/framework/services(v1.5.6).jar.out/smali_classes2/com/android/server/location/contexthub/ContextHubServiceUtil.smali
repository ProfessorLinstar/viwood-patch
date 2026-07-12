.class public abstract Lcom/android/server/location/contexthub/ContextHubServiceUtil;
.super Ljava/lang/Object;
.source "ContextHubServiceUtil.java"


# static fields
.field public static final DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    const-string v0, "MM/dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 75
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public static checkPermissions(Landroid/content/Context;)V
    .locals 2

    .line 332
    const-string v0, "android.permission.ACCESS_CONTEXT_HUB"

    const-string v1, "ACCESS_CONTEXT_HUB permission required to use Context Hub"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static convertHalEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo;)Landroid/hardware/contexthub/EndpointInfo;
    .locals 4

    .line 438
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v2

    .line 437
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHalEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo;JJ)Landroid/hardware/contexthub/EndpointInfo;

    move-result-object p0

    return-object p0
.end method

.method public static copyToByteArrayList([BLjava/util/ArrayList;)V
    .locals 3

    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 103
    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 104
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    .line 105
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createAidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/ContextHubMessage;
    .locals 3

    .line 280
    new-instance v0, Landroid/hardware/contexthub/ContextHubMessage;

    invoke-direct {v0}, Landroid/hardware/contexthub/ContextHubMessage;-><init>()V

    .line 283
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    int-to-char p0, p0

    .line 284
    iput-char p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    .line 285
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result p0

    iput p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    .line 286
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    const/4 p0, 0x0

    .line 288
    new-array p0, p0, [Ljava/lang/String;

    iput-object p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result p0

    iput-boolean p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->isReliable:Z

    .line 290
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result p0

    iput p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->messageSequenceNumber:I

    return-object v0
.end method

.method public static createAidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/NanoappBinary;
    .locals 4

    .line 184
    const-string v0, "ContextHubServiceUtil"

    new-instance v1, Landroid/hardware/contexthub/NanoappBinary;

    invoke-direct {v1}, Landroid/hardware/contexthub/NanoappBinary;-><init>()V

    .line 187
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/contexthub/NanoappBinary;->nanoappId:J

    .line 188
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/NanoappBinary;->nanoappVersion:I

    .line 189
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/NanoappBinary;->flags:I

    .line 190
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMajorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMajorVersion:B

    .line 191
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMinorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMinorVersion:B

    const/4 v2, 0x0

    .line 193
    new-array v2, v2, [B

    iput-object v2, v1, Landroid/hardware/contexthub/NanoappBinary;->customBinary:[B

    .line 198
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getBinaryNoHeader()[B

    move-result-object p0

    iput-object p0, v1, Landroid/hardware/contexthub/NanoappBinary;->customBinary:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 202
    :catch_1
    const-string p0, "NanoApp binary was null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    :goto_0
    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v1
.end method

.method public static createContextHubInfoMap(Ljava/util/List;)Ljava/util/HashMap;
    .locals 3

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/ContextHubInfo;

    .line 88
    invoke-virtual {v1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createHalEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo;JJ)Landroid/hardware/contexthub/EndpointInfo;
    .locals 2

    .line 453
    new-instance v0, Landroid/hardware/contexthub/EndpointInfo;

    invoke-direct {v0}, Landroid/hardware/contexthub/EndpointInfo;-><init>()V

    .line 454
    new-instance v1, Landroid/hardware/contexthub/EndpointId;

    invoke-direct {v1}, Landroid/hardware/contexthub/EndpointId;-><init>()V

    iput-object v1, v0, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    .line 455
    iput-wide p1, v1, Landroid/hardware/contexthub/EndpointId;->id:J

    .line 456
    iput-wide p3, v1, Landroid/hardware/contexthub/EndpointId;->hubId:J

    .line 457
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/hardware/contexthub/EndpointInfo;->name:Ljava/lang/String;

    .line 458
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getVersion()I

    move-result p1

    iput p1, v0, Landroid/hardware/contexthub/EndpointInfo;->version:I

    .line 459
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/hardware/contexthub/EndpointInfo;->tag:Ljava/lang/String;

    .line 460
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getRequiredPermissions()Ljava/util/Collection;

    move-result-object p1

    .line 461
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v0, Landroid/hardware/contexthub/EndpointInfo;->requiredPermissions:[Ljava/lang/String;

    .line 462
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object p0

    .line 463
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Landroid/hardware/contexthub/Service;

    iput-object p1, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    .line 465
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/contexthub/HubServiceInfo;

    .line 466
    iget-object p3, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    new-instance p4, Landroid/hardware/contexthub/Service;

    invoke-direct {p4}, Landroid/hardware/contexthub/Service;-><init>()V

    aput-object p4, p3, p1

    .line 467
    iget-object p3, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    aget-object p3, p3, p1

    invoke-virtual {p2}, Landroid/hardware/contexthub/HubServiceInfo;->getFormat()I

    move-result p4

    iput p4, p3, Landroid/hardware/contexthub/Service;->format:I

    .line 468
    iget-object p3, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    aget-object p3, p3, p1

    invoke-virtual {p2}, Landroid/hardware/contexthub/HubServiceInfo;->getServiceDescriptor()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p3, Landroid/hardware/contexthub/Service;->serviceDescriptor:Ljava/lang/String;

    .line 469
    iget-object p3, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    aget-object p3, p3, p1

    invoke-virtual {p2}, Landroid/hardware/contexthub/HubServiceInfo;->getMajorVersion()I

    move-result p4

    iput p4, p3, Landroid/hardware/contexthub/Service;->majorVersion:I

    .line 470
    iget-object p3, v0, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    aget-object p3, p3, p1

    invoke-virtual {p2}, Landroid/hardware/contexthub/HubServiceInfo;->getMinorVersion()I

    move-result p2

    iput p2, p3, Landroid/hardware/contexthub/Service;->minorVersion:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createHalMessage(Landroid/hardware/contexthub/HubMessage;)Landroid/hardware/contexthub/Message;
    .locals 2

    .line 484
    new-instance v0, Landroid/hardware/contexthub/Message;

    invoke-direct {v0}, Landroid/hardware/contexthub/Message;-><init>()V

    .line 485
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/Message;->flags:I

    const/4 v1, 0x0

    .line 486
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/contexthub/Message;->permissions:[Ljava/lang/String;

    .line 487
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/Message;->sequenceNumber:I

    .line 488
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubMessage;->getMessageType()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/Message;->type:I

    .line 489
    invoke-virtual {p0}, Landroid/hardware/contexthub/HubMessage;->getMessageBody()[B

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/contexthub/Message;->content:[B

    return-object v0
.end method

.method public static createHidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .locals 3

    .line 260
    new-instance v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 262
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    .line 263
    iput-short p0, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    .line 264
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result p0

    iput p0, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    .line 265
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p0

    iget-object p1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->copyToByteArrayList([BLjava/util/ArrayList;)V

    return-object v0
.end method

.method public static createHidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    .locals 4

    .line 152
    const-string v0, "ContextHubServiceUtil"

    new-instance v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    invoke-direct {v1}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    .line 155
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    .line 156
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    .line 157
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->flags:I

    .line 158
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMajorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    .line 159
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMinorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    .line 164
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getBinaryNoHeader()[B

    move-result-object p0

    iget-object v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->copyToByteArrayList([BLjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 168
    :catch_1
    const-string p0, "NanoApp binary was null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    :goto_0
    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v1
.end method

.method public static createHubMessage(Landroid/hardware/contexthub/Message;)Landroid/hardware/contexthub/HubMessage;
    .locals 4

    .line 501
    iget v0, p0, Landroid/hardware/contexthub/Message;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 502
    :goto_0
    new-instance v0, Landroid/hardware/contexthub/HubMessage$Builder;

    iget v2, p0, Landroid/hardware/contexthub/Message;->type:I

    iget-object v3, p0, Landroid/hardware/contexthub/Message;->content:[B

    invoke-direct {v0, v2, v3}, Landroid/hardware/contexthub/HubMessage$Builder;-><init>(I[B)V

    .line 503
    invoke-virtual {v0, v1}, Landroid/hardware/contexthub/HubMessage$Builder;->setResponseRequired(Z)Landroid/hardware/contexthub/HubMessage$Builder;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Landroid/hardware/contexthub/HubMessage$Builder;->build()Landroid/hardware/contexthub/HubMessage;

    move-result-object v0

    .line 505
    iget p0, p0, Landroid/hardware/contexthub/Message;->sequenceNumber:I

    invoke-virtual {v0, p0}, Landroid/hardware/contexthub/HubMessage;->setMessageSequenceNumber(I)V

    return-object v0
.end method

.method public static createNanoAppMessage(Landroid/hardware/contexthub/ContextHubMessage;)Landroid/hardware/location/NanoAppMessage;
    .locals 7

    .line 319
    iget-wide v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    iget v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    iget-object v3, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    iget-char v4, p0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    const v5, 0xffff

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-boolean v5, p0, Landroid/hardware/contexthub/ContextHubMessage;->isReliable:Z

    iget v6, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageSequenceNumber:I

    invoke-static/range {v0 .. v6}, Landroid/hardware/location/NanoAppMessage;->createMessageFromNanoApp(JI[BZZI)Landroid/hardware/location/NanoAppMessage;

    move-result-object p0

    return-object p0
.end method

.method public static createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;
    .locals 5

    .line 303
    iget-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createPrimitiveByteArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 305
    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    iget v3, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    iget-short p0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    const/4 v4, -0x1

    if-ne p0, v4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v1, v2, v3, v0, p0}, Landroid/hardware/location/NanoAppMessage;->createMessageFromNanoApp(JI[BZ)Landroid/hardware/location/NanoAppMessage;

    move-result-object p0

    return-object p0
.end method

.method public static createNanoAppStateList(Ljava/util/List;)Ljava/util/List;
    .locals 8

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    .line 219
    new-instance v2, Landroid/hardware/location/NanoAppState;

    iget-object v3, v1, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    move-object v5, v3

    iget-wide v3, v5, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    move-object v6, v5

    iget v5, v6, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    iget-boolean v6, v6, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    iget-object v7, v1, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-direct/range {v2 .. v7}, Landroid/hardware/location/NanoAppState;-><init>(JIZLjava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createNanoAppStateList([Landroid/hardware/contexthub/NanoappInfo;)Ljava/util/List;
    .locals 14

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 238
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 239
    iget-object v5, v4, Landroid/hardware/contexthub/NanoappInfo;->rpcServices:[Landroid/hardware/contexthub/NanoappRpcService;

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 240
    new-instance v9, Landroid/hardware/location/NanoAppRpcService;

    iget-wide v12, v8, Landroid/hardware/contexthub/NanoappRpcService;->id:J

    iget v8, v8, Landroid/hardware/contexthub/NanoappRpcService;->version:I

    invoke-direct {v9, v12, v13, v8}, Landroid/hardware/location/NanoAppRpcService;-><init>(JI)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 242
    :cond_0
    new-instance v5, Landroid/hardware/location/NanoAppState;

    iget-wide v6, v4, Landroid/hardware/contexthub/NanoappInfo;->nanoappId:J

    iget v8, v4, Landroid/hardware/contexthub/NanoappInfo;->nanoappVersion:I

    iget-boolean v9, v4, Landroid/hardware/contexthub/NanoappInfo;->enabled:Z

    new-instance v10, Ljava/util/ArrayList;

    iget-object v4, v4, Landroid/hardware/contexthub/NanoappInfo;->permissions:[Ljava/lang/String;

    .line 244
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {v5 .. v11}, Landroid/hardware/location/NanoAppState;-><init>(JIZLjava/util/List;Ljava/util/List;)V

    .line 242
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static createPrimitiveByteArray(Ljava/util/ArrayList;)[B
    .locals 3

    .line 117
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 118
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 119
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createPrimitiveIntArray(Ljava/util/Collection;)[I
    .locals 4

    .line 132
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 135
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .line 136
    aput v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static formatDateFromTimestamp(J)Ljava/lang/String;
    .locals 1

    .line 426
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasPermissions(Landroid/content/Context;IILjava/util/Collection;)Z
    .locals 2

    .line 579
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 580
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "no permission for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubServiceUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static notePermissions(Landroid/app/AppOpsManager;ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 8

    .line 608
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 609
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    .line 612
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v7

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 617
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SecurityException: noteOp for pkg "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " opcode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 617
    const-string p1, "ContextHubServiceUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    :cond_1
    move-object p0, v1

    move p1, v3

    move-object p2, v4

    move-object p3, v5

    move-object p5, v6

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static toAppHubEndpointReason(B)I
    .locals 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toAppHubEndpointReason: invalid reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ContextHubServiceUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toContextHubEvent(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toContextHubEvent: Unknown event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextHubServiceUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static toContextHubEventFromAidl(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toContextHubEventFromAidl: Unknown event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextHubServiceUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static toHalReason(I)B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toHalReason: invalid reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ContextHubServiceUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static toHubAppInfo_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 373
    new-instance v4, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    invoke-direct {v4}, Landroid/hardware/contexthub/V1_2/HubAppInfo;-><init>()V

    .line 374
    iget-object v5, v4, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    iget-wide v6, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    iput-wide v6, v5, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    .line 375
    iget v6, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    iput v6, v5, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    .line 376
    iget-object v6, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    iput-object v6, v5, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    .line 377
    iget-boolean v3, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    iput-boolean v3, v5, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    .line 378
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v4, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    .line 379
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toTransactionResult(I)I
    .locals 1

    .line 0
    if-eqz p0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

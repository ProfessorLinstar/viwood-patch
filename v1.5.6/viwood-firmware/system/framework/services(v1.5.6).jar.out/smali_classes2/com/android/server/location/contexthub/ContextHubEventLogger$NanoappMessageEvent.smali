.class public Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
.super Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;
.source "ContextHubEventLogger.java"


# instance fields
.field public errorCode:Ljava/util/Optional;

.field public final message:Landroid/hardware/location/NanoAppMessage;


# direct methods
.method public constructor <init>(JILandroid/hardware/location/NanoAppMessage;Z)V
    .locals 7

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v6, p5

    .line 161
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;-><init>(JIJZ)V

    .line 162
    iput-object p4, v0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;->message:Landroid/hardware/location/NanoAppMessage;

    .line 163
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;->errorCode:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public setErrorCode(B)V
    .locals 0

    .line 167
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;->errorCode:Ljava/util/Optional;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;->timeStampInMs:J

    invoke-static {v1, v2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->formatDateFromTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ": NanoappMessageEvent[hubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;->contextHubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;->message:Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {v1}, Landroid/hardware/location/NanoAppMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, ", success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;->success:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, ", errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;->errorCode:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;->errorCode:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "null"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 182
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

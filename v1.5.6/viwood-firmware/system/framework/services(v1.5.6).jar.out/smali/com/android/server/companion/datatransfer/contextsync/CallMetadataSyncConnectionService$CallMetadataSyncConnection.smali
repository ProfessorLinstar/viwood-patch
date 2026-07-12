.class Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;
.super Landroid/telecom/Connection;
.source "CallMetadataSyncConnectionService.java"


# instance fields
.field public final mAssociationId:I

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

.field public final mCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;

.field public mIsIdFinalized:Z

.field public final mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public static bridge synthetic -$$Nest$minitialize(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->initialize()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdate(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->update(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;)V

    return-void
.end method

.method public constructor <init>(Landroid/telecom/TelecomManager;Landroid/media/AudioManager;ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 291
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAudioManager:Landroid/media/AudioManager;

    .line 292
    iput p3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAssociationId:I

    .line 293
    iput-object p4, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 294
    iput-object p5, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;

    return-void
.end method


# virtual methods
.method public getAssociationId()I
    .locals 0

    .line 302
    iget p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAssociationId:I

    return p0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initialize()V
    .locals 6

    .line 310
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 314
    :cond_0
    invoke-static {v0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->convertStatusToState(I)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x7

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    .line 316
    invoke-virtual {p0}, Landroid/telecom/Connection;->setRinging()V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 318
    invoke-virtual {p0}, Landroid/telecom/Connection;->setActive()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 320
    invoke-virtual {p0}, Landroid/telecom/Connection;->setOnHold()V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    .line 322
    new-instance v0, Landroid/telecom/DisconnectCause;

    invoke-direct {v0, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_5

    .line 324
    invoke-virtual {p0}, Landroid/telecom/Connection;->setDialing()V

    goto :goto_0

    .line 326
    :cond_5
    invoke-virtual {p0}, Landroid/telecom/Connection;->setInitialized()V

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getCallerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 331
    invoke-virtual {p0, v0, v4}, Landroid/telecom/Connection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 332
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getCallerId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v5, "custom"

    invoke-static {v5, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/telecom/Connection;->setAddress(Landroid/net/Uri;I)V

    .line 336
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 337
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    .line 340
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v0

    .line 341
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {v2, v3}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    move-result v2

    if-eqz v2, :cond_7

    or-int/2addr v0, v4

    goto :goto_1

    :cond_7
    and-int/lit8 v0, v0, -0x2

    .line 346
    :goto_1
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    :cond_8
    and-int/lit8 v0, v0, -0x41

    .line 351
    :goto_2
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    const/4 v3, 0x5

    .line 352
    invoke-virtual {v2, v3}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    move-result v2

    .line 351
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 353
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 354
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setConnectionCapabilities(I)V

    :cond_9
    return-void
.end method

.method public isIdFinalized()Z
    .locals 0

    .line 306
    iget-boolean p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mIsIdFinalized:Z

    return p0
.end method

.method public onAnswer(I)V
    .locals 0

    const/4 p1, 0x1

    .line 412
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    return-void
.end method

.method public onDisconnect()V
    .locals 1

    const/4 v0, 0x6

    .line 453
    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    return-void
.end method

.method public onHold()V
    .locals 1

    const/4 v0, 0x7

    .line 437
    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    return-void
.end method

.method public onMuteStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 447
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    return-void
.end method

.method public onReject()V
    .locals 1

    const/4 v0, 0x2

    .line 417
    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    return-void
.end method

.method public onReject(I)V
    .locals 0

    .line 422
    invoke-virtual {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->onReject()V

    return-void
.end method

.method public onReject(Ljava/lang/String;)V
    .locals 0

    .line 427
    invoke-virtual {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->onReject()V

    return-void
.end method

.method public onSilence()V
    .locals 1

    const/4 v0, 0x3

    .line 432
    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    return-void
.end method

.method public onUnhold()V
    .locals 1

    const/16 v0, 0x8

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->sendCallAction(I)V

    return-void
.end method

.method public final sendCallAction(I)V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;

    iget v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAssociationId:I

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;->sendCallAction(ILjava/lang/String;I)V

    return-void
.end method

.method public final update(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;)V
    .locals 5

    .line 359
    iget-boolean v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mIsIdFinalized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setId(Ljava/lang/String;)V

    .line 361
    iput-boolean v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mIsIdFinalized:Z

    .line 363
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getStatus()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 364
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 365
    invoke-virtual {v3}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getStatus()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 366
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 368
    :cond_1
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setStatus(I)V

    .line 369
    invoke-static {v0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->convertStatusToState(I)I

    move-result v0

    .line 370
    invoke-virtual {p0}, Landroid/telecom/Connection;->getState()I

    move-result v3

    const/4 v4, 0x7

    if-eq v0, v3, :cond_7

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 372
    invoke-virtual {p0}, Landroid/telecom/Connection;->setRinging()V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    .line 374
    invoke-virtual {p0}, Landroid/telecom/Connection;->setActive()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 376
    invoke-virtual {p0}, Landroid/telecom/Connection;->setOnHold()V

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_5

    .line 378
    new-instance v0, Landroid/telecom/DisconnectCause;

    invoke-direct {v0, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    :cond_5
    if-ne v0, v1, :cond_6

    .line 380
    invoke-virtual {p0}, Landroid/telecom/Connection;->setDialing()V

    goto :goto_0

    .line 382
    :cond_6
    const-string v0, "CallMetadataSyncConnectionService"

    const-string v3, "Could not update call to unknown state"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_7
    :goto_0
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v0

    .line 387
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getControls()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setControls(Ljava/util/Set;)V

    .line 388
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {p1, v4}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    const/16 v3, 0x8

    .line 390
    invoke-virtual {p1, v3}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    and-int/lit8 p1, v0, -0x2

    goto :goto_2

    :cond_9
    :goto_1
    or-int/lit8 p1, v0, 0x1

    .line 396
    :goto_2
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {v0, v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 397
    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    and-int/lit8 p1, p1, -0x41

    goto :goto_4

    :cond_b
    :goto_3
    or-int/lit8 p1, p1, 0x40

    .line 403
    :goto_4
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 404
    invoke-virtual {v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    move-result v1

    .line 403
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 405
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v0

    if-eq p1, v0, :cond_c

    .line 406
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->setConnectionCapabilities(I)V

    :cond_c
    return-void
.end method

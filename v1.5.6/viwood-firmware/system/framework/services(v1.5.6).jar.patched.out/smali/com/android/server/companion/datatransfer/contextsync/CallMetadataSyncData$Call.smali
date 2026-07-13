.class public Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;
.super Ljava/lang/Object;
.source "CallMetadataSyncData.java"


# instance fields
.field public mAppIcon:[B

.field public mCallerId:Ljava/lang/String;

.field public final mControls:Ljava/util/Set;

.field public mDirection:I

.field public mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

.field public mId:Ljava/lang/String;

.field public mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;
    .locals 5

    .line 200
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-direct {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;-><init>()V

    if-eqz p0, :cond_0

    .line 202
    const-string v1, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setId(Ljava/lang/String;)V

    .line 203
    const-string v1, "com.android.server.companion.datatransfer.contextsync.extra.CALLER_ID"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setCallerId(Ljava/lang/String;)V

    .line 204
    const-string v1, "com.android.server.companion.datatransfer.contextsync.extra.APP_ICON"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setAppIcon([B)V

    .line 205
    const-string v1, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_NAME"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    const-string v2, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_ID"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    const-string v3, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_EXT_ID"

    .line 208
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    new-instance v4, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setFacilitator(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;)V

    .line 211
    const-string v1, "com.android.server.companion.datatransfer.contextsync.extra.STATUS"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setStatus(I)V

    .line 212
    const-string v1, "com.android.server.companion.datatransfer.contextsync.extra.DIRECTION"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setDirection(I)V

    .line 213
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "com.android.server.companion.datatransfer.contextsync.extra.CONTROLS"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setControls(Ljava/util/Set;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addControl(I)V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 299
    instance-of v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 300
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public getAppIcon()[B
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mAppIcon:[B

    return-object p0
.end method

.method public getCallerId()Ljava/lang/String;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    return-object p0
.end method

.method public getControls()Ljava/util/Set;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    return-object p0
.end method

.method public getDirection()I
    .locals 0

    .line 286
    iget p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    return p0
.end method

.method public getFacilitator()Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 282
    iget p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    return p0
.end method

.method public hasControl(I)Z
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setAppIcon([B)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mAppIcon:[B

    return-void
.end method

.method public setCallerId(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    return-void
.end method

.method public setControls(Ljava/util/Set;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 262
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    .line 253
    iput p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    return-void
.end method

.method public setFacilitator(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    return-void
.end method

.method public writeToBundle()Landroid/os/Bundle;
    .locals 3

    .line 219
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    const-string v1, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "com.android.server.companion.datatransfer.contextsync.extra.CALLER_ID"

    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "com.android.server.companion.datatransfer.contextsync.extra.APP_ICON"

    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mAppIcon:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 223
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    invoke-virtual {v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    invoke-virtual {v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    invoke-virtual {v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->getExtendedIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_EXT_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "com.android.server.companion.datatransfer.contextsync.extra.STATUS"

    iget v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string v1, "com.android.server.companion.datatransfer.contextsync.extra.DIRECTION"

    iget v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "com.android.server.companion.datatransfer.contextsync.extra.CONTROLS"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

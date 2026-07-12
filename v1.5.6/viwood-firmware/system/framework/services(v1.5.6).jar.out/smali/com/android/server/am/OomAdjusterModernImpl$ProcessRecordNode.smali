.class public Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;
.super Ljava/lang/Object;
.source "OomAdjusterModernImpl.java"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

.field public mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public isLinked()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    const-string v1, "ProcessRecordNode{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    goto :goto_1

    :cond_1
    const/16 v2, 0x3e9

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 263
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unlink()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-eqz v1, :cond_1

    .line 239
    iput-object v0, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    :cond_1
    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    return-void
.end method

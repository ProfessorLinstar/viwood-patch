.class public final Lcom/android/server/autofill/ViewState;
.super Ljava/lang/Object;
.source "ViewState.java"


# instance fields
.field public final id:Landroid/view/autofill/AutofillId;

.field public mAutofilledValue:Landroid/view/autofill/AutofillValue;

.field public mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

.field public mCurrentValue:Landroid/view/autofill/AutofillValue;

.field public mDatasetId:Ljava/lang/String;

.field public final mIsPrimaryCredential:Z

.field public final mListener:Lcom/android/server/autofill/ViewState$Listener;

.field public mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

.field public mSanitizedValue:Landroid/view/autofill/AutofillValue;

.field public mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

.field public mState:I

.field public mVirtualBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;IZ)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 126
    iput-object p2, p0, Lcom/android/server/autofill/ViewState;->mListener:Lcom/android/server/autofill/ViewState$Listener;

    .line 127
    iput p3, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 128
    iput-boolean p4, p0, Lcom/android/server/autofill/ViewState;->mIsPrimaryCredential:Z

    return-void
.end method

.method public static getStateAsString(I)Ljava/lang/String;
    .locals 3

    .line 212
    const-string v0, "STATE_"

    int-to-long v1, p0

    const-class p0, Lcom/android/server/autofill/ViewState;

    invoke-static {p0, v0, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .line 309
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "id:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "datasetId:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "is primary credential:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ViewState;->mIsPrimaryCredential:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "primary response id:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "secondary response id:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "currentValue:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    if-eqz v0, :cond_4

    .line 327
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autofilledValue:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 329
    :cond_4
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    if-eqz v0, :cond_5

    .line 330
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "candidateSaveValue:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 332
    :cond_5
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    if-eqz v0, :cond_6

    .line 333
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sanitizedValue:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 335
    :cond_6
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    .line 336
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "virtualBounds:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public getAutofilledValue()Landroid/view/autofill/AutofillValue;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    return-object p0
.end method

.method public getCandidateSaveValue()Landroid/view/autofill/AutofillValue;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    return-object p0
.end method

.method public getCurrentValue()Landroid/view/autofill/AutofillValue;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    return-object p0
.end method

.method public getDatasetId()Ljava/lang/String;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    return-object p0
.end method

.method public getResponse()Landroid/service/autofill/FillResponse;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    return-object p0
.end method

.method public getSanitizedValue()Landroid/view/autofill/AutofillValue;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    return-object p0
.end method

.method public getSecondaryResponse()Landroid/service/autofill/FillResponse;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 204
    iget p0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    return p0
.end method

.method public getStateAsString()Ljava/lang/String;
    .locals 0

    .line 208
    iget p0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    invoke-static {p0}, Lcom/android/server/autofill/ViewState;->getStateAsString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVirtualBounds()Landroid/graphics/Rect;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public maybeCallOnFillReady(I)V
    .locals 3

    .line 259
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 260
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring UI for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewState"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 264
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ViewState;->requestingPrimaryResponse(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    :goto_0
    if-eqz v0, :cond_3

    .line 267
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 268
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mListener:Lcom/android/server/autofill/ViewState$Listener;

    iget-object v2, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    invoke-interface {v1, v0, v2, p0, p1}, Lcom/android/server/autofill/ViewState$Listener;->onFillReady(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;I)V

    :cond_3
    return-void
.end method

.method public final requestingPrimaryResponse(I)Z
    .locals 2

    .line 275
    iget-boolean p0, p0, Lcom/android/server/autofill/ViewState;->mIsPrimaryCredential:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    and-int/lit16 p0, p1, 0x800

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    and-int/lit16 p0, p1, 0x800

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public resetState(I)V
    .locals 1

    .line 227
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    return-void
.end method

.method public setAutofilledValue(Landroid/view/autofill/AutofillValue;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    return-void
.end method

.method public setCandidateSaveValue(Landroid/view/autofill/AutofillValue;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    return-void
.end method

.method public setCurrentValue(Landroid/view/autofill/AutofillValue;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    return-void
.end method

.method public setDatasetId(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    return-void
.end method

.method public setResponse(Landroid/service/autofill/FillResponse;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 197
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    return-void

    .line 199
    :cond_0
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    return-void
.end method

.method public setSanitizedValue(Landroid/view/autofill/AutofillValue;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    return-void
.end method

.method public setState(I)V
    .locals 2

    .line 216
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 217
    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    goto :goto_0

    :cond_0
    or-int/2addr v0, p1

    .line 219
    iput v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 222
    iget p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewState: [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 286
    const-string v1, ", datasetId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_0
    const-string v1, ", state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    if-eqz v1, :cond_1

    .line 290
    const-string v1, ", currentValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    if-eqz v1, :cond_2

    .line 293
    const-string v1, ", candidateSaveValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    if-eqz v1, :cond_3

    .line 296
    const-string v1, ", autofilledValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    :cond_3
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    if-eqz v1, :cond_4

    .line 299
    const-string v1, ", sanitizedValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    :cond_4
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    .line 302
    const-string v1, ", virtualBounds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    :cond_5
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 244
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    :cond_0
    if-eqz p2, :cond_1

    .line 247
    iput-object p2, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 250
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    return-void
.end method

.class public final Lcom/android/server/autofill/Session$ClassificationState;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field public mClassificationCombinedHintsMap:Landroid/util/ArrayMap;

.field public mClassificationGroupHintsMap:Landroid/util/ArrayMap;

.field public mClassificationHintsMap:Landroid/util/ArrayMap;

.field public mGroupHintsToAutofillIdMap:Landroid/util/ArrayMap;

.field public mHintsToAutofillIdMap:Landroid/util/ArrayMap;

.field public mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

.field public mPendingFieldClassificationRequest:Landroid/service/assist/classification/FieldClassificationRequest;

.field public mState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClassificationCombinedHintsMap(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationCombinedHintsMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGroupHintsToAutofillIdMap(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mGroupHintsToAutofillIdMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHintsToAutofillIdMap(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mHintsToAutofillIdMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastFieldClassificationResponse(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/service/assist/classification/FieldClassificationResponse;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingFieldClassificationRequest(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/service/assist/classification/FieldClassificationRequest;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mPendingFieldClassificationRequest:Landroid/service/assist/classification/FieldClassificationRequest;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/autofill/Session$ClassificationState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$monAssistStructureReceived(Lcom/android/server/autofill/Session$ClassificationState;Landroid/app/assist/AssistStructure;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session$ClassificationState;->onAssistStructureReceived(Landroid/app/assist/AssistStructure;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monFieldClassificationRequestSent(Lcom/android/server/autofill/Session$ClassificationState;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$ClassificationState;->onFieldClassificationRequestSent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessResponse(Lcom/android/server/autofill/Session$ClassificationState;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$ClassificationState;->processResponse()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldTriggerRequest(Lcom/android/server/autofill/Session$ClassificationState;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$ClassificationState;->shouldTriggerRequest()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdatePendingRequest(Lcom/android/server/autofill/Session$ClassificationState;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$ClassificationState;->updatePendingRequest()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateResponseReceived(Lcom/android/server/autofill/Session$ClassificationState;Landroid/service/assist/classification/FieldClassificationResponse;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session$ClassificationState;->updateResponseReceived(Landroid/service/assist/classification/FieldClassificationResponse;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7209
    iput v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/autofill/Session-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/autofill/Session$ClassificationState;-><init>()V

    return-void
.end method

.method public static processDetections(Ljava/util/Set;Landroid/view/autofill/AutofillId;Landroid/util/ArrayMap;)V
    .locals 2

    .line 7308
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7310
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7311
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    goto :goto_1

    .line 7313
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 7315
    :goto_1
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7316
    invoke-virtual {p2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final onAssistStructureReceived(Landroid/app/assist/AssistStructure;)V
    .locals 1

    const/4 v0, 0x3

    .line 7345
    iput v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    .line 7346
    new-instance v0, Landroid/service/assist/classification/FieldClassificationRequest;

    invoke-direct {v0, p1}, Landroid/service/assist/classification/FieldClassificationRequest;-><init>(Landroid/app/assist/AssistStructure;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mPendingFieldClassificationRequest:Landroid/service/assist/classification/FieldClassificationRequest;

    return-void
.end method

.method public final onFieldClassificationRequestSent()V
    .locals 1

    const/4 v0, 0x3

    .line 7351
    iput v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    const/4 v0, 0x0

    .line 7352
    iput-object v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mPendingFieldClassificationRequest:Landroid/service/assist/classification/FieldClassificationRequest;

    return-void
.end method

.method public final processResponse()Z
    .locals 7

    .line 7268
    iget-object v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationHintsMap:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 7273
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 7276
    :cond_1
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationHintsMap:Landroid/util/ArrayMap;

    .line 7277
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationGroupHintsMap:Landroid/util/ArrayMap;

    .line 7278
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/autofill/Session$ClassificationState;->mHintsToAutofillIdMap:Landroid/util/ArrayMap;

    .line 7279
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/autofill/Session$ClassificationState;->mGroupHintsToAutofillIdMap:Landroid/util/ArrayMap;

    .line 7280
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationCombinedHintsMap:Landroid/util/ArrayMap;

    .line 7282
    invoke-virtual {v0}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    move-result-object v0

    .line 7285
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/assist/classification/FieldClassification;

    .line 7286
    invoke-virtual {v2}, Landroid/service/assist/classification/FieldClassification;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 7287
    invoke-virtual {v2}, Landroid/service/assist/classification/FieldClassification;->getHints()Ljava/util/Set;

    move-result-object v4

    .line 7288
    invoke-virtual {v2}, Landroid/service/assist/classification/FieldClassification;->getGroupHints()Ljava/util/Set;

    move-result-object v2

    .line 7289
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 7290
    iget-object v6, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationHintsMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 7292
    iget-object v6, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationGroupHintsMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7293
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 7295
    :cond_2
    iget-object v6, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationCombinedHintsMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7297
    iget-object v5, p0, Lcom/android/server/autofill/Session$ClassificationState;->mHintsToAutofillIdMap:Landroid/util/ArrayMap;

    invoke-static {v4, v3, v5}, Lcom/android/server/autofill/Session$ClassificationState;->processDetections(Ljava/util/Set;Landroid/view/autofill/AutofillId;Landroid/util/ArrayMap;)V

    .line 7298
    iget-object v4, p0, Lcom/android/server/autofill/Session$ClassificationState;->mGroupHintsToAutofillIdMap:Landroid/util/ArrayMap;

    invoke-static {v2, v3, v4}, Lcom/android/server/autofill/Session$ClassificationState;->processDetections(Ljava/util/Set;Landroid/view/autofill/AutofillId;Landroid/util/ArrayMap;)V

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final shouldTriggerRequest()Z
    .locals 2

    .line 7357
    iget p0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final stateToString()Ljava/lang/String;
    .locals 2

    .line 7244
    iget v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 7256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_CLASSIFICATION_STATE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7254
    :cond_0
    const-string p0, "STATE_INVALIDATED"

    return-object p0

    .line 7252
    :cond_1
    const-string p0, "STATE_RESPONSE"

    return-object p0

    .line 7250
    :cond_2
    const-string p0, "STATE_PENDING_REQUEST"

    return-object p0

    .line 7248
    :cond_3
    const-string p0, "STATE_PENDING_ASSIST_REQUEST"

    return-object p0

    .line 7246
    :cond_4
    const-string p0, "STATE_INITIAL"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 7363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassificationState: [state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7365
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$ClassificationState;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingFieldClassificationRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mPendingFieldClassificationRequest:Landroid/service/assist/classification/FieldClassificationRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastFieldClassificationResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mClassificationHintsMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationHintsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mClassificationGroupHintsMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationGroupHintsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHintsToAutofillIdMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mHintsToAutofillIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mGroupHintsToAutofillIdMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mGroupHintsToAutofillIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updatePendingRequest()V
    .locals 1

    const/4 v0, 0x3

    .line 7332
    iput v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    return-void
.end method

.method public final updateResponseReceived(Landroid/service/assist/classification/FieldClassificationResponse;)V
    .locals 1

    const/4 v0, 0x4

    .line 7337
    iput v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    .line 7338
    iput-object p1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

    const/4 p1, 0x0

    .line 7339
    iput-object p1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mPendingFieldClassificationRequest:Landroid/service/assist/classification/FieldClassificationRequest;

    .line 7340
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$ClassificationState;->processResponse()Z

    return-void
.end method

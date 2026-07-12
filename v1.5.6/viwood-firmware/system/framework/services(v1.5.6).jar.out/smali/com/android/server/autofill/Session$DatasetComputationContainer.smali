.class public Lcom/android/server/autofill/Session$DatasetComputationContainer;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field public mAutofillIdToDatasetMap:Ljava/util/Map;

.field public mAutofillIds:Ljava/util/Set;

.field public mDatasets:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2290
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIds:Ljava/util/Set;

    .line 2293
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mDatasets:Ljava/util/Set;

    .line 2294
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIdToDatasetMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/autofill/Session-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/autofill/Session$DatasetComputationContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 2297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DatasetComputationContainer["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2298
    iget-object v1, p0, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIds:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 2299
    const-string v1, ", autofillIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2301
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mDatasets:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 2302
    const-string v1, ", mDatasets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mDatasets:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2304
    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIdToDatasetMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 2305
    const-string v1, ", mAutofillIdToDatasetMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session$DatasetComputationContainer;->mAutofillIdToDatasetMap:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 p0, 0x5d

    .line 2307
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

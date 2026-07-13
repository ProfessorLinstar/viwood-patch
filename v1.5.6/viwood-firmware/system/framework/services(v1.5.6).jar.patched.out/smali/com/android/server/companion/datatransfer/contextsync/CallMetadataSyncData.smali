.class public Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;
.super Ljava/lang/Object;
.source "CallMetadataSyncData.java"


# instance fields
.field public final mCallControlRequests:Ljava/util/List;

.field public final mCallCreateRequests:Ljava/util/List;

.field public final mCallFacilitators:Ljava/util/List;

.field public final mCalls:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCalls:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallCreateRequests:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallControlRequests:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallFacilitators:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCall(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;)V
    .locals 1

    .line 40
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCalls:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addCallControlRequest(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallControlRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCallCreateRequest(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallCreateRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFacilitator(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallFacilitators:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCallControlRequests()Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallControlRequests:Ljava/util/List;

    return-object p0
.end method

.method public getCallCreateRequests()Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallCreateRequests:Ljava/util/List;

    return-object p0
.end method

.method public getCalls()Ljava/util/Collection;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCalls:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getFacilitators()Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallFacilitators:Ljava/util/List;

    return-object p0
.end method

.method public hasCall(Ljava/lang/String;)Z
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCalls:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

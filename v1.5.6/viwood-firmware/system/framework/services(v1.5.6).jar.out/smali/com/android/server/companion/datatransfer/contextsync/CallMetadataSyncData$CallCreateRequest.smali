.class public Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;
.super Ljava/lang/Object;
.source "CallMetadataSyncData.java"


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

.field public mId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getFacilitator()Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setFacilitator(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mId:Ljava/lang/String;

    return-void
.end method

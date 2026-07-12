.class public Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;
.super Ljava/lang/Object;
.source "CallMetadataSyncData.java"


# instance fields
.field public mControl:I

.field public mId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getControl()I
    .locals 0

    .line 139
    iget p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->mControl:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setControl(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->mControl:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->mId:Ljava/lang/String;

    return-void
.end method

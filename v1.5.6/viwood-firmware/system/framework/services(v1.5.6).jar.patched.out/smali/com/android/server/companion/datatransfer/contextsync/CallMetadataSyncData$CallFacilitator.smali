.class public Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;
.super Ljava/lang/Object;
.source "CallMetadataSyncData.java"


# instance fields
.field public mExtendedIdentifier:Ljava/lang/String;

.field public mIdentifier:Ljava/lang/String;

.field public mIsTel:Z

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mName:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mExtendedIdentifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtendedIdentifier()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mExtendedIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public isTel()Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIsTel:Z

    return p0
.end method

.method public setExtendedIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mExtendedIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setIsTel(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIsTel:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mName:Ljava/lang/String;

    return-void
.end method

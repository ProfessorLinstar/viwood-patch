.class public Lcom/android/server/companion/devicepresence/ObservableUuid;
.super Ljava/lang/Object;
.source "ObservableUuid.java"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mTimeApprovedMs:J

.field public final mUserId:I

.field public final mUuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUserId:I

    .line 34
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    .line 35
    iput-object p3, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mPackageName:Ljava/lang/String;

    .line 36
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mTimeApprovedMs:J

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeApprovedMs()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mTimeApprovedMs:J

    return-wide v0
.end method

.method public getUserId()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUserId:I

    return p0
.end method

.method public getUuid()Landroid/os/ParcelUuid;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    return-object p0
.end method

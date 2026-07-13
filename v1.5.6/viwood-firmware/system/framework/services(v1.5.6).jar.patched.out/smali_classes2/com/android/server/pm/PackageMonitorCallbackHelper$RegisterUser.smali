.class public final Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;
.super Ljava/lang/Object;
.source "PackageMonitorCallbackHelper.java"


# instance fields
.field public mUid:I

.field public mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageMonitorCallbackHelper;II)V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput p3, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUid:I

    .line 293
    iput p2, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUserId:I

    return-void
.end method


# virtual methods
.method public getUid()I
    .locals 0

    .line 297
    iget p0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUid:I

    return p0
.end method

.method public getUserId()I
    .locals 0

    .line 301
    iget p0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUserId:I

    return p0
.end method

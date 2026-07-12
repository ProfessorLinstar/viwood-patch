.class public final Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;
.super Ljava/lang/Object;
.source "LogcatManagerService.java"


# instance fields
.field public final mPendingRequests:Ljava/util/List;

.field public mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/logcat/LogcatManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;-><init>()V

    return-void
.end method

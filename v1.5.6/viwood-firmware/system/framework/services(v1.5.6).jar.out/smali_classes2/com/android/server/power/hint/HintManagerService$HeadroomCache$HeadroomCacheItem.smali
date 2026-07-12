.class public Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# instance fields
.field public mExpTime:J

.field public mKey:Ljava/lang/Object;

.field public mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService$HeadroomCache;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemExpDurationMillis:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->mExpTime:J

    .line 247
    iput-object p2, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->mKey:Ljava/lang/Object;

    .line 248
    iput-object p3, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public isExpired()Z
    .locals 4

    .line 252
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->mExpTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
